@version = "1.1.0"
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

  spec.subspec 'CocoaLumberjack' do |s2|
    s2.preserve_paths = 'src/Classes/*'
    s2.source_files = ['src/Classes/*{*.m,*.h,*.swift}', 'src/Classes/**/*{*.m,*.h,*.swift}']
  end

  spec.dependency 'CocoaLumberjack', '~> 3.4.2'
  spec.dependency 'CocoaLumberjack/Swift'

end
