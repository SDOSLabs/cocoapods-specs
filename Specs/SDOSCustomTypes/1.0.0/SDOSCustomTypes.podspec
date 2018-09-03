@version = "1.0.0"
Pod::Spec.new do |spec|
  spec.platform     = :ios, '8.0'
  spec.name         = 'SDOSCustomTypes'
  spec.authors      = 'SDOS'
  spec.version      = @version
  spec.license      = { :type => 'SDOS License' }
  spec.homepage     = 'https://svrgitpub.sdos.es/iOS/SDOSCustomTypes'
  spec.summary      = 'Librería que proporciona nuevas clases con el objetivo de tener clases distintas para los objetos que representan una fecha, una hora o una fecha con hora'
  spec.source       = { :git => "https://svrgitpub.sdos.es/iOS/SDOSCustomTypes.git", :tag => "v#{spec.version}" }
  spec.framework    = ['Foundation']
  spec.requires_arc = true

  spec.subspec 'CustomTypes' do |s1|
    s1.source_files = 'src/Classes/SDOSCustomTypes.h'
    s1.subspec 'CustomTypes' do |s2|
      s2.subspec 'NSDateTime' do |s3|
        s3.source_files = 'src/Classes/CustomTypes/NSDateTime/{*.m,*.h}'
      end
      s2.subspec 'NSTime' do |s3|
        s3.source_files = 'src/Classes/CustomTypes/NSTime/{*.m,*.h}'
      end
    end
    s1.subspec 'Util' do |s2|
        s2.source_files = 'src/Classes/Util/{*.m,*.h}'
    end
  end
end
