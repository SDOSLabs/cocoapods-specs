Pod::Spec.new do |spec|
  spec.platform     = :ios, '7.0'
  spec.name         = 'SHLineGraphViewRFSON'
  spec.authors      = 'SDOS'
  spec.version      = '1.0.5'
  spec.license      = { :type => 'RFSON' }
  spec.homepage     = 'https://s-dos.es'
  spec.summary      = 'SHLineGraphView` is a simple and efficient reusable UIView subview which you can use to create line graphs.'
  spec.source       = { :svn => "http://svn.sdos.es/Sdos/ComponentesIOS/Librerias/SHLineGraphView", :tag => "1.0.5" }
  spec.subspec 'include' do |ss|
      ss.source_files = '*.h'
  end
  spec.subspec 'source' do |ss|
      ss.source_files = '*.m'
  end
  spec.requires_arc = true
end