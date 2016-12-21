@version = "1.0.1"
Pod::Spec.new do |spec|
  spec.platform     = :ios, '8.0'
  spec.name         = 'SDOSAFJSMR'
  spec.authors      = 'SDOS'
  spec.version      = @version
  spec.license      = { :type => 'SDOS License' }
  spec.homepage     = 'http://git.sdos.es/ios/SDOSAFJSMR'
  spec.summary      = 'Librería de integración entre AFNetworking, JSONModel y MagicalRecord'
  spec.source       = { :git => "http://git.sdos.es/ios/SDOSAFJSMR.git", :tag => "v#{spec.version}" }
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

  spec.dependency 'SDOSDAO', '~> 1.0'
  spec.dependency 'SDOSLocalizableString', '~> 1.0'
  spec.dependency 'SDOSMagicalRecord', '~> 1.0'
  spec.dependency 'SDOSAFNetworkingJSONModel', '~> 1.0'

end
