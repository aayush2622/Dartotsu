Pod::Spec.new do |s|
  s.name             = 'dartotsu_image_rust'
  s.version          = '0.0.1'
  s.summary          = 'Rust image processing FFI plugin for Dartotsu'
  s.description      = <<-DESC
Rust image processing FFI plugin for Dartotsu
                       DESC
  s.homepage         = 'https://github.com/aayush2622/Dartotsu'
  s.license          = { :type => 'MIT' }
  s.author           = { 'Dartotsu Team' => 'team@dartotsu.org' }
  s.source           = { :path => '.' }
  s.source_files     = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform         = :ios, '12.0'

  s.script_phase = {
    :name => 'Build Rust library',
    :script => 'sh "$PODS_TARGET_SRCROOT/../cargokit/build_pod.sh" ../rust dartotsu_image_rust',
    :execution_position => :before_compile,
    :input_files => ['${BUILT_PRODUCTS_DIR}/cargokit_phony'],
    :output_files => ["${BUILT_PRODUCTS_DIR}/libdartotsu_image_rust.a"],
  }
  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386',
    'OTHER_LDFLAGS' => '-force_load ${BUILT_PRODUCTS_DIR}/libdartotsu_image_rust.a',
  }
end
