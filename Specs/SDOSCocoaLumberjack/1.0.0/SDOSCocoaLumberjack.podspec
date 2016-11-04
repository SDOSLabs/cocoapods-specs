@version = "1.0.0"
Pod::Spec.new do |spec|
  spec.platform     = :ios, '8.0'
  spec.name         = 'SDOSCocoaLumberjack'
  spec.authors      = 'SDOS'
  spec.version      = @version
  spec.license      = { :type => 'SDOS License' }
  spec.homepage     = 'http://git.sdos.es/ios/SDOSCocoaLumberjack'
  spec.summary      = 'Librería que registra la configuración por defecto de CocoaLumberjack. Esta configuración se ejecuta automáticamente sin necesidad de llamar a ningún método'
  spec.source       = { :git => "http://git.sdos.es/ios/SDOSCocoaLumberjack.git", :tag => "v#{spec.version}" }
  spec.framework    = ['Foundation']
  spec.requires_arc = true

  spec.subspec 'CocoaLumberjack' do |s1|
    s1.source_files = 'src/Classes/SDOSCocoaLumberjack.h'
    s1.subspec 'Logging' do |s2|
      s2.source_files = 'src/Classes/Logging/{*.m,*.h}'
    end
    s1.subspec 'Manager' do |s2|
      s2.source_files = 'src/Classes/Manager/{*.m,*.h}'
    end
  end

  spec.dependency 'CocoaLumberjack', '~> 2.4'

end
