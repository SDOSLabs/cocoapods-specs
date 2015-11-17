Pod::Spec.new do |spec|
  spec.platform     = :ios, '7.0'
  spec.name         = 'Extensions'
  spec.authors      = 'SDOS'
  spec.version      = '1.0.0'
  spec.license      = { :type => 'RFSON' }
  spec.homepage     = 'https://s-dos.es'
  spec.summary      = 'Librería que añade funcionalidades a los tipos nativos'
  spec.source       = { :svn => "http://svn.sdos.es/Sdos/ComponentesIOS/Librerias/Extensions", :tag => "1.0.0" }
  spec.subspec 'include' do |ss|
      ss.source_files = '**/*.h'
  end
  spec.subspec 'source' do |ss|
      ss.source_files = '**/*.m'
  end
  spec.framework    = ['Foundation', 'UIKit', 'MapKit', 'Accelerate', 'QuartzCore']
  spec.libraries    = 'z'
  spec.requires_arc = true
  spec.dependency 'SFHFKeychainUtils', '~> 1.0'
end