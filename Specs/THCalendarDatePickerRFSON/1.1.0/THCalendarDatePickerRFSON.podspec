Pod::Spec.new do |spec|
  spec.platform     = :ios, '7.0'
  spec.name         = 'THCalendarDatePickerRFSON'
  spec.authors      = 'SDOS'
  spec.version      = '1.1.0'
  spec.license      = { :type => 'RFSON' }
  spec.homepage     = 'https://s-dos.es'
  spec.summary      = 'Librería que proporciona un calendario para selecionar una fecha'
  spec.source       = { :svn => "http://svn.sdos.es/Sdos/ComponentesIOS/Librerias/THCalendarDatePicker", :tag => "1.1.0" }
  spec.subspec 'include' do |ss|
      ss.source_files = '*.h'
  end
  spec.subspec 'source' do |ss|
      ss.source_files = '*.m'
  end
  spec.resources = ["*.xib"]
  spec.resource_bundles = {'THCalendarDatePickerImages' => ['Images.xcassets']}
  spec.framework    = ['Foundation', 'UIKit', 'QuartzCore']
  spec.requires_arc = true
  spec.dependency 'Extensions', '~> 1.0'
end