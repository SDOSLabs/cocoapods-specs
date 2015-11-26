@version = "1.0.5"
Pod::Spec.new do |spec|
  spec.platform     = :ios, '8.0'
  spec.name         = 'CoreiOS'
  spec.authors      = 'SDOS'
  spec.version      = @version
  spec.license      = { :type => 'SDOS License' }
  spec.homepage     = 'http://git.sdos.es/ios/CoreiOS'
  spec.summary      = 'Librería de conexión de los frameworks de terceros. En está librería se añaden funcionalidades para facilitar el flujo de trabajo'
  spec.source       = { :svn => "http://git.sdos.es/ios/CoreiOS", :tag => "v#{spec.version}" }

  spec.subspec 'Classes' do |s1|
    s1.source_files = 'Classes/CoreiOS.h'
    spec.subspec 'Categories' do |s2|
      spec.subspec 'Controller' do |s3|
        s3.source_files = 'Classes/Categories/Controller/{*.m,*.h}'
      end
      spec.subspec 'JSON' do |s3|
        s3.source_files = 'Classes/Categories/JSON/{*.m,*.h}'
      end
      spec.subspec 'UIApplication' do |s3|
        s3.source_files = 'Classes/Categories/UIApplication/{*.m,*.h}'
      end
      spec.subspec 'Utilidades' do |s3|
        s3.source_files = 'Classes/Categories/Utilidades/{*.m,*.h}'
      end
    end
    spec.subspec 'Constants' do |s2|
      s2.source_files = 'Classes/Constants/{*.m,*.h}'
    end
    spec.subspec 'CustomTypes' do |s2|
      spec.subspec 'NSDateTime' do |s3|
        s3.source_files = 'Classes/CustomTypes/NSDateTime/{*.m,*.h}'
      end
      spec.subspec 'NSTime' do |s3|
        s3.source_files = 'Classes/CustomTypes/NSTime/{*.m,*.h}'
      end
    end
    spec.subspec 'Loader' do |s2|
      spec.subspec 'Manager' do |s3|
        s3.source_files = 'Classes/Loader/Manager/{*.m,*.h}'
      end
      spec.subspec 'Object' do |s3|
        s3.source_files = 'Classes/Loader/Object/{*.m,*.h}'
      end
      spec.subspec 'Private' do |s3|
        s3.source_files = 'Classes/Loader/Private/{*.m,*.h}'
      end
    end
    spec.subspec 'Logging' do |s2|
      s2.source_files = 'Classes/Logging/{*.m,*.h}'
    end
    spec.subspec 'Protocols' do |s2|
      spec.subspec 'Controller' do |s3|
        s3.source_files = 'Classes/Protocols/Controller/{*.m,*.h}'
      end
      spec.subspec 'DAO' do |s3|
        s3.source_files = 'Classes/Protocols/DAO/{*.m,*.h}'
      end
      spec.subspec 'Error' do |s3|
        s3.source_files = 'Classes/Protocols/Error/{*.m,*.h}'
      end
      spec.subspec 'Loader' do |s3|
        s3.source_files = 'Classes/Protocols/Loader/{*.m,*.h}'
      end
    end
    spec.subspec 'Util' do |s2|
      s2.source_files = 'Classes/Util/{*.m,*.h}'
    end
    spec.subspec 'WS' do |s2|
      spec.subspec 'DTO' do |s3|
        s3.source_files = 'Classes/WS/DTO/{*.m,*.h}'
      end
      spec.subspec 'ErrorDTO' do |s3|
        s3.source_files = 'Classes/WS/ErrorDTO/{*.m,*.h}'
      end
      spec.subspec 'RequestSerializer' do |s3|
        s3.source_files = 'Classes/WS/RequestSerializer/{*.m,*.h}'
      end
      spec.subspec 'ResponseSerielizer' do |s3|
        s3.source_files = 'Classes/WS/ResponseSerielizer/{*.m,*.h}'
      end
    end
  end
  spec.subspec 'source' do |ss|
      ss.source_files = '**/*.m'
  end
  spec.framework    = ['Foundation', 'UIKit', 'IQKeyboardManager']
  spec.requires_arc = true
  spec.dependency 'SFHFKeychainUtils', '~> 1.0'
  spec.dependency 'Titanium', '~> 1.1'

  spec.dependency 'CocoaLumberjack', '~> 2.2.0'
  spec.dependency 'MaterialControlsCustom', '~> 1.0.0'
  spec.dependency 'libextobjc', '~> 0.4.1'
  spec.dependency 'IQKeyboardManager', '~> 3.3.4'
  spec.dependency 'Google/Analytics', '~> 1.0.0'
  spec.dependency 'JSONModel', '~> 1.1.2'
  spec.dependency 'Extensions', '~> 1.0.0'
  spec.dependency 'FLEX', '~> 2.0'
  spec.dependency 'KZBootstrap', '~> 0.5.5'
  spec.dependency 'GBVersionTracking', '~> 1.3.1'
  spec.dependency 'Fabric', '~> 1.6.0'
  spec.dependency 'Crashlytics', '~> 3.4.1'
  spec.dependency 'MBProgressHUD', '~> 0.9.1'
  spec.dependency 'M13ProgressSuite', '~> 1.2.7'
  spec.dependency 'JSONModel', '~> 1.1.2'
end