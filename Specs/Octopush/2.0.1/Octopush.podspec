Pod::Spec.new do |spec|
  spec.name         = 'Octopush'
  spec.authors      = 'SDOS'
  spec.version      = '2.0.1'
  spec.license      = { :type => 'RFSON' }
  spec.homepage     = 'https://octopush.me'
  spec.summary      = 'Librería de OCtopush para el envío de notificaciones push'
  spec.source       = { :svn => "http://svn.sdos.es/Sdos/ComponentesIOS/Librerias/Octopush", :tag => "2.0.1" }
  	spec.subspec 'include' do |ss|
   		ss.source_files = 'include/*.h'
	end
  spec.preserve_paths = 'lib/*.a'
  spec.library = 'Octopush'
  spec.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/Octopush/lib"' }
  spec.framework    = ['Security', 'UIKit', 'AudioToolbox', 'CoreLocation', 'SystemConfiguration', 'Foundation', 'CoreGraphics']
  spec.requires_arc = true
end