@version = "1.4.5"
Pod::Spec.new do |spec|
  spec.platform     = :ios, '8.0'
  spec.name         = 'CoreiOS'
  spec.authors      = 'SDOS'
  spec.version      = @version
  spec.license      = { :type => 'SDOS License' }
  spec.homepage     = 'https://svrgitpub.sdos.es/iOS/CoreiOS'
  spec.summary      = 'Librería de conexión de los frameworks de terceros. En está librería se añaden funcionalidades para facilitar el flujo de trabajo'
  spec.source       = { :git => "https://svrgitpub.sdos.es/iOS/CoreiOS.git", :tag => "v#{spec.version}" }
  spec.framework    = ['Foundation', 'UIKit', 'Crashlytics', 'Fabric']
  spec.requires_arc = true
  spec.preserve_paths = "CoreiOS/Scripts/*"

  spec.subspec 'Classes' do |s1|
    s1.source_files = 'CoreiOS/Classes/CoreiOS.h'
    s1.subspec 'Categories' do |s2|
      s2.subspec 'Controller' do |s3|
        s3.source_files = 'CoreiOS/Classes/Categories/Controller/{*.m,*.h}'
      end
      s2.subspec 'JSON' do |s3|
        s3.source_files = 'CoreiOS/Classes/Categories/JSON/{*.m,*.h}'
      end
      s2.subspec 'UIApplication' do |s3|
        s3.source_files = 'CoreiOS/Classes/Categories/UIApplication/{*.m,*.h}'
      end
      s2.subspec 'Utilidades' do |s3|
        s3.source_files = 'CoreiOS/Classes/Categories/Utilidades/{*.m,*.h}'
      end
      s2.subspec 'Octopush' do |s3|
        s3.source_files = 'CoreiOS/Classes/Categories/Octopush/{*.m,*.h}'
      end
      s2.subspec 'Domain' do |s3|
        s3.source_files = 'CoreiOS/Classes/Categories/Domain/{*.m,*.h}'
      end
    end
    s1.subspec 'Constants' do |s2|
      s2.source_files = 'CoreiOS/Classes/Constants/{*.m,*.h}'
    end
    s1.subspec 'CustomTypes' do |s2|
      s2.subspec 'NSDateTime' do |s3|
        s3.source_files = 'CoreiOS/Classes/CustomTypes/NSDateTime/{*.m,*.h}'
      end
      s2.subspec 'NSTime' do |s3|
        s3.source_files = 'CoreiOS/Classes/CustomTypes/NSTime/{*.m,*.h}'
      end
    end
    s1.subspec 'Loader' do |s2|
      s2.subspec 'Manager' do |s3|
        s3.source_files = 'CoreiOS/Classes/Loader/Manager/{*.m,*.h}'
      end
      s2.subspec 'Object' do |s3|
        s3.source_files = 'CoreiOS/Classes/Loader/Object/{*.m,*.h}'
      end
      s2.subspec 'Private' do |s3|
        s3.source_files = 'CoreiOS/Classes/Loader/Private/{*.m,*.h}'
      end
    end
    s1.subspec 'Logging' do |s2|
      s2.source_files = 'CoreiOS/Classes/Logging/{*.m,*.h}'
    end
    s1.subspec 'Protocols' do |s2|
      s2.subspec 'Controller' do |s3|
        s3.source_files = 'CoreiOS/Classes/Protocols/Controller/{*.m,*.h}'
      end
      s2.subspec 'DAO' do |s3|
        s3.source_files = 'CoreiOS/Classes/Protocols/DAO/{*.m,*.h}'
      end
      s2.subspec 'Error' do |s3|
        s3.source_files = 'CoreiOS/Classes/Protocols/Error/{*.m,*.h}'
      end
      s2.subspec 'Loader' do |s3|
        s3.source_files = 'CoreiOS/Classes/Protocols/Loader/{*.m,*.h}'
      end
      s2.subspec 'Domain' do |s3|
        s3.source_files = 'CoreiOS/Classes/Protocols/Domain/{*.m,*.h}'
      end
    end
    s1.subspec 'Util' do |s2|
      s2.source_files = 'CoreiOS/Classes/Util/{*.m,*.h}'
    end
    s1.subspec 'WS' do |s2|
      s2.subspec 'DTO' do |s3|
        s3.source_files = 'CoreiOS/Classes/WS/DTO/{*.m,*.h}'
      end
      s2.subspec 'ErrorDTO' do |s3|
        s3.source_files = 'CoreiOS/Classes/WS/ErrorDTO/{*.m,*.h}'
      end
      s2.subspec 'RequestSerializer' do |s3|
        s3.source_files = 'CoreiOS/Classes/WS/RequestSerializer/{*.m,*.h}'
      end
      s2.subspec 'ResponseSerializer' do |s3|
        s3.source_files = 'CoreiOS/Classes/WS/ResponseSerializer/{*.m,*.h}'
      end
    end
    s1.subspec 'Domain' do |s2|
    	s2.source_files = 'CoreiOS/Classes/Domain/{*.m,*.h}'
    end
    s1.subspec 'Connections' do |s2|
      s2.source_files = 'CoreiOS/Classes/Connections/{*.m,*.h}'
      s2.subspec 'KVO' do |s3|
        s3.source_files = 'CoreiOS/Classes/Connections/KVO/{*.m,*.h}'
      end
    end
    s1.subspec 'Provider' do |s2|
      s2.source_files = 'CoreiOS/Classes/Provider/{*.m,*.h}'
    end
  end

  spec.dependency 'CocoaLumberjack'
  spec.dependency 'libextobjc'
  spec.dependency 'IQKeyboardManager'
  spec.dependency 'JSONModel'
  spec.dependency 'FLEX'
  spec.dependency 'KZBootstrap'
  spec.dependency 'GBVersionTracking'
  spec.dependency 'MBProgressHUD'
  spec.dependency 'M13ProgressSuite'
  spec.dependency 'Extensions'
  spec.dependency 'MaterialControlsCustom'
  spec.dependency 'Google/Analytics'
  spec.dependency 'Fabric'
  spec.dependency 'Crashlytics'
  
  spec.deprecated_in_favor_of = 'SDOS'

end
