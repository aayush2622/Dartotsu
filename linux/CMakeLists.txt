# Project-level configuration.
cmake_minimum_required(VERSION 3.10)
project(runner LANGUAGES CXX)

# The name of the executable created for the application. Change this to change
# the on-disk name of your application.
set(BINARY_NAME "dartotsu")
# The unique GTK application identifier for this application. See:
# https://wiki.gnome.org/HowDoI/ChooseApplicationID
set(APPLICATION_ID "ani.aayush262.dartotsu")

# Explicitly opt in to modern CMake behaviors to avoid warnings with recent
# versions of CMake.
cmake_policy(SET CMP0063 NEW)

# Load bundled libraries from the lib/ directory relative to the binary.
set(CMAKE_INSTALL_RPATH "$ORIGIN/lib")

# Root filesystem for cross-building.
if(FLUTTER_TARGET_PLATFORM_SYSROOT)
  set(CMAKE_SYSROOT ${FLUTTER_TARGET_PLATFORM_SYSROOT})
  set(CMAKE_FIND_ROOT_PATH ${CMAKE_SYSROOT})
  set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
  set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)
  set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
  set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
endif()

# Define build configuration options.
if(NOT CMAKE_BUILD_TYPE AND NOT CMAKE_CONFIGURATION_TYPES)
  set(CMAKE_BUILD_TYPE "Debug" CACHE
    STRING "Flutter build mode" FORCE)
  set_property(CACHE CMAKE_BUILD_TYPE PROPERTY STRINGS
    "Debug" "Profile" "Release")
endif()

# Compilation settings that should be applied to most targets.
#
# Be cautious about adding new options here, as plugins use this function by
# default. In most cases, you should add new options to specific targets instead
# of modifying this function.
function(APPLY_STANDARD_SETTINGS TARGET)
  target_compile_features(${TARGET} PUBLIC cxx_std_14)
  target_compile_options(${TARGET} PRIVATE -Wall -Werror)
  target_compile_options(${TARGET} PRIVATE "$<$<NOT:$<CONFIG:Debug>>:-O3>")
  target_compile_definitions(${TARGET} PRIVATE "$<$<NOT:$<CONFIG:Debug>>:NDEBUG>")
endfunction()

# Flutter library and tool build rules.
set(FLUTTER_MANAGED_DIR "${CMAKE_CURRENT_SOURCE_DIR}/flutter")
add_subdirectory(${FLUTTER_MANAGED_DIR})

# System-level dependencies.
find_package(PkgConfig REQUIRED)
pkg_check_modules(GTK REQUIRED IMPORTED_TARGET gtk+-3.0)

add_definitions(-DAPPLICATION_ID="${APPLICATION_ID}")

# Define the application target. To change its name, change BINARY_NAME above,
# not the value here, or `flutter run` will no longer work.
#
# Any new source files that you add to the application should be added here.
add_executable(${BINARY_NAME}
  "main.cc"
  "my_application.cc"
  "${FLUTTER_MANAGED_DIR}/generated_plugin_registrant.cc"
)

# Apply the standard set of build settings. This can be removed for applications
# that need different build settings.
apply_standard_settings(${BINARY_NAME})

# --- Nix-specific: fix up media_kit's downloaded libmpv.so.2 ---
# media_kit_video downloads a prebuilt, third-party libmpv.so.2 into
# ${CMAKE_BINARY_DIR}/mpv rather than using a distro package, so its own
# transitive shared-library deps (VAAPI, VDPAU, PulseAudio, GnuTLS,
# libarchive, X11 extensions, EGL, ...) are never pkg-config'd or
# find_package'd by anything and the final link fails with "undefined
# reference" for all of them. FLUTTER_NIX_LIB_DIRS (set by
# modules/apps/development/languages/flutter/Flutter.nix in the vayume
# flake) is a colon-separated list of the Nix store lib/ dirs providing
# those - patched directly into libmpv.so.2's own RPATH here, since the
# linker does search a referenced .so's own RPATH to resolve its
# transitive symbols (verified empirically - this works reliably, unlike
# trying to get LIBRARY_PATH/NIX_LDFLAGS to reach this specific link
# command). PRE_LINK so it's done before ${BINARY_NAME} itself links
# against it. Store paths change on every nixpkgs rebuild, so this reads
# the list live from the environment rather than hardcoding a snapshot.
if(DEFINED ENV{FLUTTER_NIX_LIB_DIRS})
  add_custom_command(TARGET ${BINARY_NAME} PRE_LINK
    COMMAND bash -c "if [ -f \"${CMAKE_BINARY_DIR}/mpv/libmpv.so.2\" ]; then patchelf --set-rpath \"$ENV{FLUTTER_NIX_LIB_DIRS}\" \"${CMAKE_BINARY_DIR}/mpv/libmpv.so.2\"; fi"
    VERBATIM
  )
endif()

# Add dependency libraries. Add any application-specific dependencies here.
target_link_libraries(${BINARY_NAME} PRIVATE flutter)
target_link_libraries(${BINARY_NAME} PRIVATE PkgConfig::GTK)

# Run the Flutter tool portions of the build. This must not be removed.
add_dependencies(${BINARY_NAME} flutter_assemble)

# Only the install-generated bundle's copy of the executable will launch
# correctly, since the resources must in the right relative locations. To avoid
# people trying to run the unbundled copy, put it in a subdirectory instead of
# the default top-level location.
set_target_properties(${BINARY_NAME}
  PROPERTIES
  RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/intermediates_do_not_run"
)


# Generated plugin build rules, which manage building the plugins and adding
# them to the application.
include(flutter/generated_plugins.cmake)


# === Installation ===
# By default, "installing" just makes a relocatable bundle in the build
# directory.
#
# The upstream Flutter template guards this with
# `if(CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT)`, which is meant to
# only override CMAKE_INSTALL_PREFIX when the user hasn't set one. That
# flag's exact semantics around nested project()/add_subdirectory() calls
# (e.g. from cargokit's rhttp subproject) vary across CMake versions -
# here (CMake 4.4.2) it evaluates false even on a from-scratch configure,
# leaving CMAKE_INSTALL_PREFIX at CMake's own /usr/local default and
# making `ninja install` try to write there instead of into the bundle,
# failing without root. There is no scenario where `flutter run`/`flutter
# build linux` actually wants a different, real install prefix, so force
# it unconditionally instead of trusting that flag.
set(BUILD_BUNDLE_DIR "${PROJECT_BINARY_DIR}/bundle")
set(CMAKE_INSTALL_PREFIX "${BUILD_BUNDLE_DIR}" CACHE PATH "..." FORCE)

# Start with a clean build bundle directory every time.
install(CODE "
  file(REMOVE_RECURSE \"${BUILD_BUNDLE_DIR}/\")
  " COMPONENT Runtime)

set(INSTALL_BUNDLE_DATA_DIR "${CMAKE_INSTALL_PREFIX}/data")
set(INSTALL_BUNDLE_LIB_DIR "${CMAKE_INSTALL_PREFIX}/lib")

install(TARGETS ${BINARY_NAME} RUNTIME DESTINATION "${CMAKE_INSTALL_PREFIX}"
  COMPONENT Runtime)

# --- Nix-specific: fix nested dlopen() for Cargokit-built plugins ---
# Cargokit's Rust FFI loader (used by e.g. the rhttp plugin) calls
# DynamicLibrary.open('librhttp.so') with a bare filename rather than a
# full path. CMAKE_INSTALL_RPATH above ("$ORIGIN/lib") already covers
# the executable's own direct linked libs, but that's not enough: bare
# dlopen() calls made from code already running in the process don't
# reliably consult it either way, RPATH or RUNPATH (tried converting
# the ELF tag via patchelf --force-rpath first - verified empirically
# that it did NOT fix this, despite fixing everything else, so this
# isn't just an RPATH-vs-RUNPATH tagging issue). The standard, always-
# reliable fix is a launcher wrapper: rename the real binary and put a
# tiny script in its place that sets LD_LIBRARY_PATH before exec'ing
# it, since LD_LIBRARY_PATH is unambiguously consulted for every
# dlopen() everywhere. Runs after install(TARGETS) so it wraps the
# actual bundled binary the user (or `flutter run`) launches by name.
install(CODE "
  file(RENAME \"${CMAKE_INSTALL_PREFIX}/${BINARY_NAME}\" \"${CMAKE_INSTALL_PREFIX}/${BINARY_NAME}.bin\")
  file(WRITE \"${CMAKE_INSTALL_PREFIX}/${BINARY_NAME}\" \"#!/usr/bin/env sh
DIR=\\\"\\$(cd \\\"\\$(dirname \\\"\\$0\\\")\\\" && pwd)\\\"
export LD_LIBRARY_PATH=\\\"\\$DIR/lib:\\$LD_LIBRARY_PATH\\\"
exec \\\"\\$DIR/${BINARY_NAME}.bin\\\" \\\"\\$@\\\"
\")
  execute_process(COMMAND chmod +x \"${CMAKE_INSTALL_PREFIX}/${BINARY_NAME}\")
  " COMPONENT Runtime)

install(FILES "${FLUTTER_ICU_DATA_FILE}" DESTINATION "${INSTALL_BUNDLE_DATA_DIR}"
  COMPONENT Runtime)

install(FILES "${FLUTTER_LIBRARY}" DESTINATION "${INSTALL_BUNDLE_LIB_DIR}"
  COMPONENT Runtime)

foreach(bundled_library ${PLUGIN_BUNDLED_LIBRARIES})
  install(FILES "${bundled_library}"
    DESTINATION "${INSTALL_BUNDLE_LIB_DIR}"
    COMPONENT Runtime)
endforeach(bundled_library)

# The PRE_LINK patchelf above only fixes the pre-install copy in
# ${CMAKE_BINARY_DIR}/mpv - this is a *separately copied* file at
# install time, and a fresh reconfigure/redownload of the source copy
# (e.g. after this CMakeLists.txt itself changes) doesn't carry the
# patch over to it, so it needs its own independent patch here too.
if(DEFINED ENV{FLUTTER_NIX_LIB_DIRS})
  install(CODE "
    if(EXISTS \"${INSTALL_BUNDLE_LIB_DIR}/libmpv.so.2\")
      execute_process(COMMAND patchelf --set-rpath \"$ENV{FLUTTER_NIX_LIB_DIRS}\" \"${INSTALL_BUNDLE_LIB_DIR}/libmpv.so.2\")
    endif()
    " COMPONENT Runtime)
endif()

# Copy the native assets provided by the build.dart from all packages.
set(NATIVE_ASSETS_DIR "${PROJECT_BUILD_DIR}native_assets/linux/")
install(DIRECTORY "${NATIVE_ASSETS_DIR}"
  DESTINATION "${INSTALL_BUNDLE_LIB_DIR}"
  COMPONENT Runtime
)

# Fully re-copy the assets directory on each build to avoid having stale files
# from a previous install.
set(FLUTTER_ASSET_DIR_NAME "flutter_assets")
install(CODE "
  file(REMOVE_RECURSE \"${INSTALL_BUNDLE_DATA_DIR}/${FLUTTER_ASSET_DIR_NAME}\")
  " COMPONENT Runtime)
install(DIRECTORY "${PROJECT_BUILD_DIR}/${FLUTTER_ASSET_DIR_NAME}"
  DESTINATION "${INSTALL_BUNDLE_DATA_DIR}" COMPONENT Runtime)

# Install the AOT library on non-Debug builds only.
if(NOT CMAKE_BUILD_TYPE MATCHES "Debug")
  install(FILES "${AOT_LIBRARY}" DESTINATION "${INSTALL_BUNDLE_LIB_DIR}"
    COMPONENT Runtime)
endif()
