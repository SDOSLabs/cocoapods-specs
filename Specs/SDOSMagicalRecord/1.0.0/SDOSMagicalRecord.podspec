@version = "1.0.0"
Pod::Spec.new do |spec|
  spec.platform     = :ios, '8.0'
  spec.name         = 'SDOSMagicalRecord'
  spec.authors      = 'SDOS'
  spec.version      = @version
  spec.license      = { :type => 'SDOS License' }
  spec.homepage     = 'http://git.sdos.es/ios/SDOSMagicalRecord'
  spec.summary      = 'Librería de integración con MagicalRecord'
  spec.source       = { :git => "http://git.sdos.es/ios/SDOSMagicalRecord.git", :tag => "v#{spec.version}" }
  spec.framework    = ['Foundation']
  spec.requires_arc = true

  spec.subspec 'MagicalRecord' do |s1|
    s1.source_files = 'src/Classes/SDOSMagicalRecord.h'
    s1.subspec 'Categories' do |s2|
      s2.subspec 'Domain' do |s3|
        s3.source_files = 'src/Classes/Categories/Domain/{*.m,*.h}'
      end
    end
    s1.subspec 'Constants' do |s2|
      s2.source_files = 'src/Classes/Constants/{*.m,*.h}'
    end
    s1.subspec 'Protocols' do |s2|
      s2.subspec 'DAO' do |s3|
        s3.source_files = 'src/Classes/Protocols/DAO/{*.m,*.h}'
      end
      s2.subspec 'Domain' do |s3|
        s3.source_files = 'src/Classes/Protocols/Domain/{*.m,*.h}'
      end
    end
    s1.subspec 'Util' do |s2|
      s2.source_files = 'src/Classes/Util/{*.m,*.h}'
    end
    s1.subspec 'Domain' do |s2|
      s2.source_files = 'src/Classes/Domain/{*.m,*.h}'
    end
    s1.subspec 'Provider' do |s2|
      s2.source_files = 'src/Classes/Provider/{*.m,*.h}'
    end
  end

  spec.dependency 'MagicalRecord', '~> 2.3'
  spec.dependency 'SDOSDAO', '~> 1.0'

end
