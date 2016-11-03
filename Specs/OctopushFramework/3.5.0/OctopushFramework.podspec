@version = "3.5.0"
Pod::Spec.new do |spec|
  spec.platform     = :ios, '8.0'
  spec.name         = 'OctopushFramework'
  spec.authors      = 'SDOS'
  spec.version      = @version
  spec.license      = { :type => 'SDOS License' }
  spec.homepage     = 'http://git.sdos.es/ios/Octopush'
  spec.summary      = 'Librería de Octopush para el envío de notificaciones push'
  spec.source       = { :git => "http://git.sdos.es/ios/Octopush.git", :tag => "v#{spec.version}" }
  spec.requires_arc = true
  spec.framework    = ['Security', 'UIKit', 'AudioToolbox', 'SystemConfiguration', 'Foundation', 'CoreGraphics']
  spec.weak_frameworks = ['CoreLocation']
  spec.vendored_frameworks = 'src/Framework/Octopush.framework'
end
