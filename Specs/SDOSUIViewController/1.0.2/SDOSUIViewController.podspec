@version = "1.0.2"
Pod::Spec.new do |spec|
  spec.platform     = :ios, '8.0'
  spec.name         = 'SDOSUIViewController'
  spec.authors      = 'SDOS'
  spec.version      = @version
  spec.license      = { :type => 'SDOS License' }
  spec.homepage     = 'http://git.sdos.es/ios/SDOSUIViewController'
  spec.summary      = 'Librería que extiende la clase UIViewController con funcionalidad relacionada con las fechas de creación, aparición y desaparición de los UIViewControllers. También define un protocolo para facilitar la inicialización de la vista del UIViewController'
  spec.source       = { :git => "http://git.sdos.es/ios/SDOSUIViewController.git", :tag => "v#{spec.version}" }
  spec.framework    = ['Foundation', 'UIKit']
  spec.requires_arc = true

  spec.subspec 'UIViewController' do |s1|
    s1.source_files = 'src/Classes/SDOSUIViewController.h'
    s1.subspec 'Categories' do |s2|
      s2.subspec 'Controller' do |s3|
        s3.source_files = 'src/Classes/Categories/{*.m,*.h}'
      end
    end
    s1.subspec 'Protocols' do |s2|
      s2.subspec 'Controller' do |s3|
        s3.source_files = 'src/Classes/Protocols/{*.m,*.h}'
      end
    end
  end

  spec.dependency 'SDOSCustomTypes', '~> 1.0'

end
