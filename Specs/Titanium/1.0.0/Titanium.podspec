Pod::Spec.new do |spec|
  spec.platform     = :ios, '7.0'
  spec.name         = 'Titanium'
  spec.authors      = 'SDOS'
  spec.version      = '1.0.0'
  spec.license      = { :type => 'RFSON' }
  spec.homepage     = 'https://s-dos.es'
  spec.summary      = 'A library that provides a way to view full screen images from thumbnail previews.'
  spec.source       = { :svn => "http://svn.sdos.es/Sdos/ComponentesIOS/Librerias/Titanium", :tag => "1.0.0" }
  spec.subspec 'include' do |ss|
      ss.source_files = '*.h'
  end
  spec.subspec 'source' do |ss|
      ss.source_files = '*.m'
  end
  spec.framework    = ['Foundation', 'UIKit', 'CoreGraphics']
  spec.requires_arc = true
end