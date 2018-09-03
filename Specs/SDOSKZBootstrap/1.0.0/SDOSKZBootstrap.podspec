@version = "1.0.0"
Pod::Spec.new do |spec|
  spec.platform     = :ios, '8.0'
  spec.name         = 'SDOSKZBootstrap'
  spec.authors      = 'SDOS'
  spec.version      = @version
  spec.license      = { :type => 'SDOS License' }
  spec.homepage     = 'https://svrgitpub.sdos.es/iOS/SDOSKZBootstrap'
  spec.summary      = 'Librería que carga la configuración de KZBootstrap'
  spec.source       = { :git => "https://svrgitpub.sdos.es/iOS/SDOSKZBootstrap.git", :tag => "v#{spec.version}" }
  spec.framework    = ['Foundation']
  spec.requires_arc = true

  spec.subspec 'SDOSKZBootstrap' do |s1|
    s1.source_files = 'src/Classes/SDOSKZBootstrap.h'
    s1.subspec 'Manager' do |s2|
      s2.source_files = 'src/Classes/Manager/{*.m,*.h}'
    end
  end

  spec.dependency 'KZBootstrap', '~> 0.6'

end
