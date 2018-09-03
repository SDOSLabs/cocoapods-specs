@version = "2.2.0"
Pod::Spec.new do |spec|
    spec.platform     = :ios, '8.0'
    spec.name         = 'SDOSAFNetworkingJSONModel'
    spec.authors      = 'SDOS'
    spec.version      = @version
    spec.license      = { :type => 'SDOS License' }
    spec.homepage     = 'https://svrgitpub.sdos.es/iOS/SDOSAFNetworkingJSONModel'
    spec.summary      = 'Librería de integración entre AFNetworking y JSONModel con mapeo de fechas, manejo de conexiones, bloques de salida de AFNetworking y response serializer'
    spec.source       = { :git => "https://svrgitpub.sdos.es/iOS/SDOSAFNetworkingJSONModel.git", :tag => "v#{spec.version}" }
    spec.framework    = ['Foundation', 'UIKit']
    spec.requires_arc = true

    spec.subspec 'src' do |s1|
        s1.preserve_paths = 'src/Classes/*'
        s1.source_files = ['src/Classes/*{*.m,*.h,*.swift}', 'src/Classes/**/*{*.m,*.h,*.swift}']
    end


    spec.dependency 'JSONModel', '~> 1.7'
    spec.dependency 'AFNetworking', '~> 3.2'
    spec.dependency 'Extensions'
    spec.dependency 'SDOSDAO'
    spec.dependency 'SDOSCustomTypes'

end
