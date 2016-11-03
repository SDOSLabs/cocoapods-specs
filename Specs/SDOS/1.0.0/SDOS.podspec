@version = "1.0.0"
Pod::Spec.new do |spec|
  spec.platform     = :ios, '8.0'
  spec.name         = 'SDOS'
  spec.authors      = 'SDOS'
  spec.version      = @version
  spec.license      = { :type => 'SDOS License' }
  spec.homepage     = 'http://git.sdos.es/ios/SDOS'
  spec.summary      = 'Librería de conexión de los frameworks de terceros. En está librería se añaden funcionalidades para facilitar el flujo de trabajo'
  spec.source       = { :git => "http://git.sdos.es/ios/SDOS.git", :branch => "feature/core" }
  spec.framework    = ['Foundation', 'UIKit']
  spec.requires_arc = true
  spec.default_subspecs = ['Default']

  spec.subspec 'Default' do |s1|
    s1.preserve_paths = "src/Scripts/*"
    s1.source_files = 'src/Classes/SDOS.h'
    s1.subspec 'Manager' do |s2|
      s2.source_files = 'src/Classes/Manager/{*.m,*.h}'
    end
  end

  spec.subspec 'Core' do |s1|
    s1.dependency 'SDOS/Default'
    s1.dependency 'SDOS/Loader', '~> 1.0'
    s1.dependency 'SDOS/FLEX', '~> 1.0'
    s1.dependency 'SDOS/LocalizableString', '~> 1.0'
    s1.dependency 'SDOS/KZBootstrap', '~> 1.0'
    s1.dependency 'SDOS/UIViewController', '~> 1.0'
    s1.dependency 'SDOS/Util', '~> 1.0'
    s1.dependency 'SDOS/CocoaLumberjack', '~> 1.0'
  end

  spec.subspec 'WS' do |s1|
    s1.dependency 'SDOS/Default'
    s1.dependency 'SDOS/Util'
    s1.dependency 'SDOS/DAO', '~> 1.0'
    s1.dependency 'SDOS/AFNetworkingJSONModel', '~> 1.0'
  end

  spec.subspec 'DB' do |s1|
    s1.dependency 'SDOS/Default'
    s1.dependency 'SDOS/Util'
    s1.dependency 'SDOS/DAO', '~> 1.0'
    s1.dependency 'SDOS/MagicalRecord', '~> 1.0'
  end

  spec.subspec 'All' do |s1|
    s1.dependency 'SDOS/Default'
    s1.dependency 'SDOS/Util'
    s1.dependency 'SDOS/DB'
    s1.dependency 'SDOS/WS'
    s1.dependency 'SDOS/AFJSMR', '~> 1.0'
  end

  spec.subspec 'Loader' do |s1|
    s1.dependency 'SDOSLoader'
    s1.dependency 'SDOS/Default'
  end

  spec.subspec 'FLEX' do |s1|
    s1.dependency 'SDOSFLEX'
    s1.dependency 'SDOS/Default'
  end

  spec.subspec 'LocalizableString' do |s1|
    s1.dependency 'SDOSLocalizableString'
    s1.dependency 'SDOS/Default'
  end

  spec.subspec 'DAO' do |s1|
    s1.dependency 'SDOSDAO'
    s1.dependency 'SDOS/Default'
  end

  spec.subspec 'MagicalRecord' do |s1|
    s1.dependency 'SDOSMagicalRecord'
    s1.dependency 'SDOS/Default'
  end

  spec.subspec 'AFNetworkingJSONModel' do |s1|
    s1.dependency 'SDOSAFNetworkingJSONModel'
    s1.dependency 'SDOS/Default'
  end

  spec.subspec 'AFJSMR' do |s1|
    s1.dependency 'SDOSAFJSMR'
    s1.dependency 'SDOS/Default'
  end

  spec.subspec 'KZBootstrap' do |s1|
    s1.dependency 'SDOSKZBootstrap'
    s1.dependency 'SDOS/Default'
  end

  spec.subspec 'UIViewController' do |s1|
    s1.dependency 'SDOSUIViewController'
    s1.dependency 'SDOS/Default'
  end

  spec.subspec 'Util' do |s1|
    s1.dependency 'SDOSUtil'
    s1.dependency 'SDOS/Default'
  end

  spec.subspec 'CocoaLumberjack' do |s1|
    s1.dependency 'SDOSCocoaLumberjack'
    s1.dependency 'SDOS/Default'
  end

  spec.subspec 'CustomTypes' do |s1|
    s1.dependency 'SDOSCustomTypes'
    s1.dependency 'SDOS/Default'
  end

end
