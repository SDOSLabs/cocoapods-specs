@version = "3.2.0"
Pod::Spec.new do |spec|
  spec.platform     = :ios, '8.0'
  spec.name         = 'Octopush'
  spec.authors      = 'SDOS'
  spec.version      = @version
  spec.license      = { :type => 'SDOS License' }
  spec.homepage     = 'http://git.sdos.es/ios/Octopush'
  spec.summary      = 'Librería de Octopush para el envío de notificaciones push'
  spec.source       = { :git => "http://git.sdos.es/ios/Octopush.git", :tag => "v#{spec.version}" }
  spec.requires_arc = true
  spec.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/Octopush/lib"' }
  spec.framework    = ['Security', 'UIKit', 'AudioToolbox', 'CoreLocation', 'SystemConfiguration', 'Foundation', 'CoreGraphics']
  spec.subspec 'include' do |ss|
      ss.source_files = 'Octopush/include/*.h'
  end
  spec.preserve_paths = 'Octopush/lib/*.a'
  spec.library = 'Octopush'
end