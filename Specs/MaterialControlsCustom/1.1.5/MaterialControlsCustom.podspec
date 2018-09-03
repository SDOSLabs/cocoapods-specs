@version = "1.1.5"
Pod::Spec.new do |spec|
  spec.platform     = :ios, '8.0'
  spec.name         = 'MaterialControlsCustom'
  spec.authors      = { "FPT Software" => "mobility@fsoft.com.vn" }
  spec.version      = @version
  spec.license      = { :type => 'MIT' }
  spec.homepage     = 'https://svrgitpub.sdos.es/iOS/MaterialControlsCustom'
  spec.summary      = 'Material Design controls for iOS writen in Objective-C.'
  spec.source       = { :git => "https://svrgitpub.sdos.es/iOS/MaterialControlsCustom.git", :tag => "v#{spec.version}" }
  spec.framework    = ['Foundation', 'UIKit']
  spec.requires_arc = true
  spec.source_files = 'MaterialControlsCustom/**/*.{h,m}'
end
