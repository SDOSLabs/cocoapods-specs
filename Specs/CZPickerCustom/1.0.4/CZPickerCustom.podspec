Pod::Spec.new do |spec|
  spec.platform     = :ios, '7.0'
  spec.name         = 'CZPickerCustom'
  spec.authors      = 'SDOS'
  spec.version      = '1.0.4'
  spec.license      = { :type => 'RFSON' }
  spec.homepage     = 'https://s-dos.es'
  spec.summary      = 'A picker view shown as a popup for iOS in Objective-C'
  spec.source       = { :svn => "http://svn.sdos.es/Sdos/ComponentesIOS/Librerias/CZPicker", :tag => "1.0.4" }
  spec.subspec 'include' do |ss|
      ss.source_files = '*.h'
  end
  spec.subspec 'source' do |ss|
      ss.source_files = '*.m'
  end
  spec.requires_arc = true
end