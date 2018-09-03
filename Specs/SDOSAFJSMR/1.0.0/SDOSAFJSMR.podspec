@version = "1.0.0"
Pod::Spec.new do |spec|
  spec.platform     = :ios, '8.0'
  spec.name         = 'SDOSAFJSMR'
  spec.authors      = 'SDOS'
  spec.version      = @version
  spec.license      = { :type => 'SDOS License' }
  spec.homepage     = 'https://svrgitpub.sdos.es/iOS/SDOSAFJSMR'
  spec.summary      = 'Librería de integración entre AFNetworking, JSONModel y MagicalRecord'
  spec.source       = { :git => "https://svrgitpub.sdos.es/iOS/SDOSAFJSMR.git", :tag => "v#{spec.version}" }
  spec.framework    = ['Foundation']
  spec.requires_arc = true

  spec.subspec 'AFJSMR' do |s1|
    s1.source_files = 'src/Classes/SDOSAFJSMR.h'
    s1.subspec 'Categories' do |s2|
      s2.source_files = 'src/Classes/Categories/{*.m,*.h}'
    end
    s1.subspec 'Protocols' do |s2|
      s2.source_files = 'src/Classes/Protocols/{*.m,*.h}'
    end
  end

  spec.dependency 'SDOSDAO'
  spec.dependency 'SDOSLocalizableString'
  spec.dependency 'SDOSMagicalRecord'
  spec.dependency 'SDOSAFNetworkingJSONModel'

end
