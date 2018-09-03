@version = "1.0.0"
Pod::Spec.new do |spec|
  spec.platform     = :ios, '7.0'
  spec.name         = 'CZPickerCustom'
  spec.authors      = 'SDOS'
  spec.version      = @version
  spec.license      = { :type => 'SDOS License' }
  spec.homepage     = 'https://svrgitpub.sdos.es/iOS/CZPickerView'
  spec.summary      = 'A picker view shown as a popup for iOS in Objective-C'
  spec.source       = { :git => "https://svrgitpub.sdos.es/iOS/CZPickerView.git", :tag => "v#{spec.version}" }
  spec.source_files = 'CZPickerView/{*.m,*.h}'
  spec.requires_arc = true
end
