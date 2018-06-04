@version = "2.0.2"
Pod::Spec.new do |spec|
  spec.platform     = :ios, '8.0'
  spec.name         = 'Extensions'
  spec.authors      = 'SDOS'
  spec.version      = @version
  spec.license      = { :type => 'SDOS License' }
  spec.homepage     = 'http://git.sdos.es/ios/extensions'
  spec.summary      = 'Librería que añade funcionalidades a los tipos nativos'
  spec.source       = { :git => "http://git.sdos.es/ios/extensions.git", :tag => "v#{spec.version}" }
  spec.framework    =['Foundation', 'UIKit', 'MapKit', 'Accelerate', 'QuartzCore', 'MessageUI', 'MobileCoreServices', 'AudioToolbox']
  spec.libraries    = 'z'
  spec.requires_arc = true

  spec.subspec 'Extensions' do |s2|
    s2.preserve_paths = 'src/Classes/*'
    s2.source_files = ['src/Classes/*{*.m,*.h,*.swift}', 'src/Classes/**/*{*.m,*.h,*.swift}']
  end
  
  spec.dependency 'CocoaSecurity'

end
