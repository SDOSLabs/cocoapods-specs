@version = "1.0.1"
Pod::Spec.new do |spec|
  spec.platform     = :ios, '8.0'
  spec.name         = 'SDOSUtil'
  spec.authors      = 'SDOS'
  spec.version      = @version
  spec.license      = { :type => 'SDOS License' }
  spec.homepage     = 'http://git.sdos.es/ios/SDOSUtil'
  spec.summary      = 'Librería que se encarga de activar la monitorización de GBVersionTracking de forma automática sin necesidad de llamar a ningún método. También permite añadir una sección en Ajustes que muestra la versión de la app.'
  spec.source       = { :git => "http://git.sdos.es/ios/SDOSUtil.git", :tag => "v#{spec.version}" }
  spec.framework    = ['Foundation']
  spec.requires_arc = true

  spec.subspec 'Util' do |s2|
    s2.preserve_paths = 'src/Classes/*'
    s2.source_files = ['src/Classes/*{*.m,*.h,*.swift}', 'src/Classes/**/*{*.m,*.h,*.swift}']
  end
  
  spec.dependency 'GBVersionTracking', '~> 1.3'

end
