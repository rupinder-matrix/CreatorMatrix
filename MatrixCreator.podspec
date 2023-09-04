
Pod::Spec.new do |spec|

  
  spec.name         = "MatrixCreator"
  spec.version      = "0.0.5"
  spec.summary      = "A short description of MatrixCreator."
  spec.description  = "A framework for testing the pod-spec and test the xcframework"
  spec.homepage     = "https://github.com/rupinder-matrix/CreatorMatrix"
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  spec.author       = { "rupinder-matrix" => "rupinder.singh@devs.matrixmarketers.com" }

  spec.platform     = :ios, "14.0"

  spec.source       = { :git => "https://github.com/rupinder-matrix/CreatorMatrix.git", :tag => spec.version.to_s}
# spec.source_files  = "MatrixValidator.xcframework/ios-arm64/MatrixValidator.framework/Headers/**/*.{h}"

  spec.vendored_frameworks = "MatrixCreator.xcframework"

  # spec.framework  = "SomeFramework"
  # spec.frameworks = "SomeFramework", "AnotherFramework"
  spec.frameworks    = 'UIKit', 'Webkit', 'AVFoundation'
  spec.swift_version = "5.0"
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end