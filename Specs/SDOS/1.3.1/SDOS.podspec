@version = "1.3.1"
Pod::Spec.new do |spec|
  spec.platform     = :ios, '8.0'
  spec.name         = 'SDOS'
  spec.authors      = 'SDOS'
  spec.version      = @version
  spec.license      = { :type => 'SDOS License' }
  spec.homepage     = 'http://git.sdos.es/ios/SDOS'
  spec.summary      = 'Librería de conexión de todos los frameworks de SDOS'
  spec.source       = { :git => "http://git.sdos.es/ios/SDOS.git", :tag => "v#{spec.version}" }
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
    s1.dependency 'SDOS/Loader'
    s1.dependency 'SDOS/FLEX'
    s1.dependency 'SDOS/LocalizableString'
    s1.dependency 'SDOS/KZBootstrap'
    s1.dependency 'SDOS/UIViewController'
    s1.dependency 'SDOS/Util'
    s1.dependency 'SDOS/CocoaLumberjack'
    s1.dependency 'SDOS/CustomTypes'
  end

  spec.subspec 'WS' do |s1|
    s1.dependency 'SDOS/Default'
    s1.dependency 'SDOS/Util'
    s1.dependency 'SDOS/DAO'
    s1.dependency 'SDOS/AFNetworkingJSONModel'
    s1.dependency 'SDOS/CustomTypes'
  end

  spec.subspec 'DB' do |s1|
    s1.dependency 'SDOS/Default'
    s1.dependency 'SDOS/Util'
    s1.dependency 'SDOS/DAO'
    s1.dependency 'SDOS/MagicalRecord'
  end

  spec.subspec 'All' do |s1|
    s1.dependency 'SDOS/Default'
    s1.dependency 'SDOS/Core'
    s1.dependency 'SDOS/DB'
    s1.dependency 'SDOS/WS'
    s1.dependency 'SDOS/AFJSMR'
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
