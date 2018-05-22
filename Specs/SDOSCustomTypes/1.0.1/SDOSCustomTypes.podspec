@version = "1.0.1"
Pod::Spec.new do |spec|
  spec.platform     = :ios, '8.0'
  spec.name         = 'SDOSCustomTypes'
  spec.authors      = 'SDOS'
  spec.version      = @version
  spec.license      = { :type => 'SDOS License' }
  spec.homepage     = 'http://git.sdos.es/ios/SDOSCustomTypes'
  spec.summary      = 'Librería que proporciona nuevas clases con el objetivo de tener clases distintas para los objetos que representan una fecha, una hora o una fecha con hora'
  spec.source       = { :git => "http://git.sdos.es/ios/SDOSCustomTypes.git", :tag => "v#{spec.version}" }
  spec.framework    = ['Foundation']
  spec.requires_arc = true

  spec.subspec 'CustomTypes' do |s2|
    s2.preserve_paths = 'src/Classes/*'
    s2.source_files = ['src/Classes/*{*.m,*.h,*.swift}', 'src/Classes/**/*{*.m,*.h,*.swift}']
  end
end
