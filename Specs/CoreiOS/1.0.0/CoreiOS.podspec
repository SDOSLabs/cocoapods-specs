@version = "1.0.0"
Pod::Spec.new do |spec|
  spec.platform     = :ios, '8.0'
  spec.name         = 'CoreiOS'
  spec.authors      = 'SDOS'
  spec.version      = @version
  spec.license      = { :type => 'SDOS License' }
  spec.homepage     = 'http://git.sdos.es/ios/CoreiOS'
  spec.summary      = 'Librería de conexión de los frameworks de terceros. En está librería se añaden funcionalidades para facilitar el flujo de trabajo'
  spec.source       = { :git => "http://git.sdos.es/ios/CoreiOS.git", :tag => "v#{spec.version}" }
  spec.framework    = ['Foundation', 'UIKit', 'Crashlytics', 'Fabric']
  spec.requires_arc = true
  spec.preserve_paths = "Scripts/*"

  spec.subspec 'Classes' do |s1|
    s1.source_files = 'CoreiOS/CoreiOS.h'
    s1.subspec 'Categories' do |s2|
      s2.subspec 'Controller' do |s3|
        s3.source_files = 'CoreiOS/Categories/Controller/{*.m,*.h}'
      end
      s2.subspec 'JSON' do |s3|
        s3.source_files = 'CoreiOS/Categories/JSON/{*.m,*.h}'
      end
      s2.subspec 'UIApplication' do |s3|
        s3.source_files = 'CoreiOS/Categories/UIApplication/{*.m,*.h}'
      end
      s2.subspec 'Utilidades' do |s3|
        s3.source_files = 'CoreiOS/Categories/Utilidades/{*.m,*.h}'
      end
    end
    s1.subspec 'Constants' do |s2|
      s2.source_files = 'CoreiOS/Constants/{*.m,*.h}'
    end
    s1.subspec 'CustomTypes' do |s2|
      s2.subspec 'NSDateTime' do |s3|
        s3.source_files = 'CoreiOS/CustomTypes/NSDateTime/{*.m,*.h}'
      end
      s2.subspec 'NSTime' do |s3|
        s3.source_files = 'CoreiOS/CustomTypes/NSTime/{*.m,*.h}'
      end
    end
    s1.subspec 'Loader' do |s2|
      s2.subspec 'Manager' do |s3|
        s3.source_files = 'CoreiOS/Loader/Manager/{*.m,*.h}'
      end
      s2.subspec 'Object' do |s3|
        s3.source_files = 'CoreiOS/Loader/Object/{*.m,*.h}'
      end
      s2.subspec 'Private' do |s3|
        s3.source_files = 'CoreiOS/Loader/Private/{*.m,*.h}'
      end
    end
    s1.subspec 'Logging' do |s2|
      s2.source_files = 'CoreiOS/Logging/{*.m,*.h}'
    end
    s1.subspec 'Protocols' do |s2|
      s2.subspec 'Controller' do |s3|
        s3.source_files = 'CoreiOS/Protocols/Controller/{*.m,*.h}'
      end
      s2.subspec 'DAO' do |s3|
        s3.source_files = 'CoreiOS/Protocols/DAO/{*.m,*.h}'
      end
      s2.subspec 'Error' do |s3|
        s3.source_files = 'CoreiOS/Protocols/Error/{*.m,*.h}'
      end
      s2.subspec 'Loader' do |s3|
        s3.source_files = 'CoreiOS/Protocols/Loader/{*.m,*.h}'
      end
    end
    s1.subspec 'Util' do |s2|
      s2.source_files = 'CoreiOS/Util/{*.m,*.h}'
    end
    s1.subspec 'WS' do |s2|
      s2.subspec 'DTO' do |s3|
        s3.source_files = 'CoreiOS/WS/DTO/{*.m,*.h}'
      end
      s2.subspec 'ErrorDTO' do |s3|
        s3.source_files = 'CoreiOS/WS/ErrorDTO/{*.m,*.h}'
      end
      s2.subspec 'RequestSerializer' do |s3|
        s3.source_files = 'CoreiOS/WS/RequestSerializer/{*.m,*.h}'
      end
      s2.subspec 'ResponseSerializer' do |s3|
        s3.source_files = 'CoreiOS/WS/ResponseSerializer/{*.m,*.h}'
      end
    end
  end

  spec.dependency 'CocoaLumberjack', '~> 2.2.0'
  spec.dependency 'libextobjc', '~> 0.4.1'
  spec.dependency 'IQKeyboardManager', '~> 3.3.4'
  spec.dependency 'JSONModel', '~> 1.1.2'
  spec.dependency 'FLEX', '~> 2.0'
  spec.dependency 'KZBootstrap', '~> 0.5.5'
  spec.dependency 'GBVersionTracking', '~> 1.3.1'
  spec.dependency 'MBProgressHUD', '~> 0.9.1'
  spec.dependency 'M13ProgressSuite', '~> 1.2.7'
  spec.dependency 'JSONModel', '~> 1.1.2'
  spec.dependency 'Extensions', '~> 1.0'
  spec.dependency 'MaterialControlsCustom', '~> 1.0'
  spec.dependency 'Google/Analytics', '~> 1.0.0'
  spec.dependency 'Fabric', '~> 1.6.0'
  spec.dependency 'Crashlytics', '~> 3.4.1'

end