@version = "1.0.0"
Pod::Spec.new do |spec|
  spec.platform     = :ios, '8.0'
  spec.name         = 'SDOSAFNetworkingJSONModel'
  spec.authors      = 'SDOS'
  spec.version      = @version
  spec.license      = { :type => 'SDOS License' }
  spec.homepage     = 'http://git.sdos.es/ios/SDOSAFNetworkingJSONModel'
  spec.summary      = 'Librería de integración entre AFNetworking y JSONModel con mapeo de fechas, manejo de conexiones, bloques de salida de AFNetworking y response serializer'
  spec.source       = { :git => "http://git.sdos.es/ios/SDOSAFNetworkingJSONModel.git", :tag => "v#{spec.version}" }
  spec.framework    = ['Foundation', 'UIKit']
  spec.requires_arc = true

  spec.subspec 'AFNetworkingJSONModel' do |s1|
    s1.source_files = 'src/Classes/SDOSAFNetworkingJSONModel.h'
    s1.subspec 'Categories' do |s2|
      s2.subspec 'JSON' do |s3|
        s3.source_files = 'src/Classes/Categories/JSON/{*.m,*.h}'
      end
      s2.subspec 'Util' do |s3|
        s3.source_files = 'src/Classes/Categories/Util/{*.m,*.h}'
      end
    end
    s1.subspec 'Connections' do |s2|
      s2.source_files = 'src/Classes/Connections/{*.m,*.h}'
    end
    s1.subspec 'Constants' do |s2|
      s2.source_files = 'src/Classes/Constants/{*.m,*.h}'
    end
    s1.subspec 'Protocols' do |s2|
      s2.subspec 'DAO' do |s3|
        s3.source_files = 'src/Classes/Protocols/DAO/{*.m,*.h}'
      end
      s2.subspec 'Error' do |s3|
        s3.source_files = 'src/Classes/Protocols/Error/{*.m,*.h}'
      end
    end
    s1.subspec 'Provider' do |s2|
      s2.source_files = 'src/Classes/Provider/{*.m,*.h}'
    end
    s1.subspec 'WS' do |s2|
      s2.subspec 'DTO' do |s3|
        s3.source_files = 'src/Classes/WS/DTO/{*.m,*.h}'
      end
      s2.subspec 'ErrorDTO' do |s3|
        s3.source_files = 'src/Classes/WS/ErrorDTO/{*.m,*.h}'
      end
      s2.subspec 'RequestSerializer' do |s3|
        s3.source_files = 'src/Classes/WS/RequestSerializer/{*.m,*.h}'
      end
      s2.subspec 'ResponseSerializer' do |s3|
        s3.source_files = 'src/Classes/WS/ResponseSerializer/{*.m,*.h}'
      end
    end
  end

  spec.dependency 'JSONModel', '~> 1.7'
  spec.dependency 'AFNetworking', '~> 2.6'
  spec.dependency 'Extensions', '~> 1.1'
  spec.dependency 'SDOSLocalizableString', '~> 1.0'
  spec.dependency 'SDOSDAO', '~> 1.0'
  spec.dependency 'SDOSCustomTypes', '~> 1.0'

end
