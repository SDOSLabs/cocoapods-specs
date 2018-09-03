@version = "1.0.0"
Pod::Spec.new do |spec|
  spec.platform     = :ios, '8.0'
  spec.name         = 'CoreiOS-Loader'
  spec.authors      = 'SDOS'
  spec.version      = @version
  spec.license      = { :type => 'SDOS License' }
  spec.homepage     = 'https://svrgitpub.sdos.es/iOS/CoreiOS-Loader'
  spec.summary      = 'Librería de conexión de los frameworks de terceros. En está librería se añaden funcionalidades para facilitar el flujo de trabajo'
  spec.source       = { :git => "https://svrgitpub.sdos.es/iOS/CoreiOS-Loader.git", :branch => "development" }
  spec.framework    = ['Foundation', 'UIKit']
  spec.requires_arc = true

  spec.subspec 'src' do |s1|
    s1.subspec 'Loader' do |s2|
      s2.subspec 'Manager' do |s3|
        s3.source_files = 'src/Manager/{*.m,*.h}'
      end
      s2.subspec 'Object' do |s3|
        s3.source_files = 'src/Object/{*.m,*.h}'
      end
      s2.subspec 'Private' do |s3|
        s3.source_files = 'src/Private/{*.m,*.h}'
      end
    end
  end
end
