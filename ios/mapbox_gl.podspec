#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'mapbox_gl'
  s.version          = '0.0.1'
  s.summary          = 'A new Flutter plugin.'
  s.description      = <<-DESC
A new Flutter plugin.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'

  # STEP 1: Try intermediate version first (might not have bitcode)
  s.dependency 'MapboxAnnotationExtension', '~> 0.0.1-beta.1'
  s.dependency 'Mapbox-iOS-SDK', '~> 10.18.0'  # Updated from 6.4.0 to latest v10

  # Updated requirements
  s.swift_version = '5.0'              # Updated from 4.2
  s.ios.deployment_target = '11.0'     # Updated from 9.0

  # Explicitly disable bitcode just in case
  s.pod_target_xcconfig = {
    'ENABLE_BITCODE' => 'NO',
    'DEFINES_MODULE' => 'YES'
  }

  s.user_target_xcconfig = {
    'ENABLE_BITCODE' => 'NO'
  }
end