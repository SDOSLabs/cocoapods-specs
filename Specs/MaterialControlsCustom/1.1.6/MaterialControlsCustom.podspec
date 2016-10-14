@version = "1.1.6"
Pod::Spec.new do |spec|
  spec.platform     = :ios, '8.0'
  spec.name         = 'MaterialControlsCustom'
  spec.authors      = { "FPT Software" => "mobility@fsoft.com.vn" }
  spec.version      = @version
  spec.license      = { :type => 'MIT' }
  spec.homepage     = 'http://git.sdos.es/ios/MaterialControlsCustom'
  spec.summary      = 'Material Design controls for iOS writen in Objective-C.'
  spec.source       = { :git => "http://git.sdos.es/ios/MaterialControlsCustom.git", :tag => "v#{spec.version}" }
  spec.framework    = ['Foundation', 'UIKit']
  spec.requires_arc = true
  spec.source_files = 'MaterialControlsCustom/**/*.{h,m}'
end
