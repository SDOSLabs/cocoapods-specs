@version = "1.0.0"
Pod::Spec.new do |spec|
  spec.platform     = :ios, '7.0'
  spec.name         = 'CZPickerCustom'
  spec.authors      = 'SDOS'
  spec.version      = @version
  spec.license      = { :type => 'SDOS License' }
  spec.homepage     = 'http://git.sdos.es/ios/czpickercustom'
  spec.summary      = 'A picker view shown as a popup for iOS in Objective-C'
  spec.source       = { :git => "http://git.sdos.es/ios/czpickercustom.git", :tag => "v#{spec.version}"
  spec.source_files = '{*.m,*.h}'
  spec.requires_arc = true
end