Pod::Spec.new do |spec|
  spec.platform     = :ios, '7.0'
  spec.name         = 'CustomTypes'
  spec.authors      = 'SDOS'
  spec.version      = '1.0.0'
  spec.license      = { :type => 'RFSON' }
  spec.homepage     = 'https://s-dos.es'
  spec.summary      = 'Librería con tipos personalizados de objetos nativos (Los sustituyen durante el desarrollo)'
  spec.source       = { :svn => "http://svn.sdos.es/Sdos/ComponentesIOS/Librerias/CustomTypes", :tag => "1.0.0" }
  spec.subspec 'include' do |ss|
      ss.source_files = '**/*.h'
  end
  spec.subspec 'source' do |ss|
      ss.source_files = '**/*.m'
  end
  spec.framework    = ['Foundation']
  spec.requires_arc = true
end