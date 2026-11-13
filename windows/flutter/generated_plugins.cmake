#
# Generated file, do not edit.
#

list(APPEND FLUTTER_PLUGIN_LIST
  app_links
  connectivity_plus
  dynamic_color
  firebase_core
  flutter_media_session
  flutter_qjs
  flutter_tts
  gamepads_windows
  isar_community_flutter_libs
  local_auth_windows
  media_kit_video
  dartotsu_extension_bridge
  permission_handler_windows
  screen_brightness_windows
  url_launcher_windows
  share_plus
  volume_controller
  webview_all_windows
  window_to_front
)

list(APPEND FLUTTER_FFI_PLUGIN_LIST
  dartotsu_image_rust
  flutter_local_notifications_windows
  jni
  rhttp
)

set(PLUGIN_BUNDLED_LIBRARIES)

foreach(plugin ${FLUTTER_PLUGIN_LIST})
  add_subdirectory(flutter/ephemeral/.plugin_symlinks/${plugin}/windows plugins/${plugin})
  target_link_libraries(${BINARY_NAME} PRIVATE ${plugin}_plugin)
  list(APPEND PLUGIN_BUNDLED_LIBRARIES $<TARGET_FILE:${plugin}_plugin>)
  list(APPEND PLUGIN_BUNDLED_LIBRARIES ${${plugin}_bundled_libraries})
endforeach(plugin)

foreach(ffi_plugin ${FLUTTER_FFI_PLUGIN_LIST})
  add_subdirectory(flutter/ephemeral/.plugin_symlinks/${ffi_plugin}/windows plugins/${ffi_plugin})
  list(APPEND PLUGIN_BUNDLED_LIBRARIES ${${ffi_plugin}_bundled_libraries})
endforeach(ffi_plugin)
