@version = "1.0.0"
Pod::Spec.new do |spec|
  spec.platform     = :ios, '8.0'
  spec.name         = 'SDOSUtil'
  spec.authors      = 'SDOS'
  spec.version      = @version
  spec.license      = { :type => 'SDOS License' }
  spec.homepage     = 'https://svrgitpub.sdos.es/iOS/SDOSUtil'
  spec.summary      = 'Librería que se encarga de activar la monitorización de GBVersionTracking de forma automática sin necesidad de llamar a ningún método. También permite añadir una sección en Ajustes que muestra la versión de la app.'
  spec.source       = { :git => "https://svrgitpub.sdos.es/iOS/SDOSUtil.git", :tag => "v#{spec.version}" }
  spec.framework    = ['Foundation']
  spec.requires_arc = true

  spec.subspec 'Util' do |s1|
    s1.source_files = 'src/Classes/SDOSUtil.h'
    s1.subspec 'Constants' do |s2|
      s2.source_files = 'src/Classes/Constants/{*.m,*.h}'
    end
    s1.subspec 'Manager' do |s2|
      s2.source_files = 'src/Classes/Manager/{*.m,*.h}'
    end
    s1.subspec 'Util' do |s2|
      s2.source_files = 'src/Classes/Util/{*.m,*.h}'
    end
  end

  spec.dependency 'GBVersionTracking', '~> 1.3'

end
