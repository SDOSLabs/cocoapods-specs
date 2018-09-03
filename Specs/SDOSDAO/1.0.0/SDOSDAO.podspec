@version = "1.0.0"
Pod::Spec.new do |spec|
  spec.platform     = :ios, '8.0'
  spec.name         = 'SDOSDAO'
  spec.authors      = 'SDOS'
  spec.version      = @version
  spec.license      = { :type => 'SDOS License' }
  spec.homepage     = 'https://svrgitpub.sdos.es/iOS/SDOSDAO'
  spec.summary      = 'Librería que proporciona una capa genérica de acceso a datos'
  spec.source       = { :git => "https://svrgitpub.sdos.es/iOS/SDOSDAO.git", :tag => "v#{spec.version}" }
  spec.framework    = ['Foundation']
  spec.requires_arc = true

  spec.subspec 'DAO' do |s1|
    s1.source_files = 'src/Classes/SDOSDAO.h'
    s1.subspec 'Protocols' do |s2|
      s2.source_files = 'src/Classes/Protocols/{*.m,*.h}'
    end
    s1.subspec 'Provider' do |s2|
      s2.source_files = 'src/Classes/Provider/{*.m,*.h}'
    end
  end
  
end
