@version = "1.0.3"
Pod::Spec.new do |spec|
  spec.platform     = :ios, '8.0'
  spec.name         = 'SDOSUIViewController'
  spec.authors      = 'SDOS'
  spec.version      = @version
  spec.license      = { :type => 'SDOS License' }
  spec.homepage     = 'https://svrgitpub.sdos.es/iOS/SDOSUIViewController'
  spec.summary      = 'Librería que extiende la clase UIViewController con funcionalidad relacionada con las fechas de creación, aparición y desaparición de los UIViewControllers. También define un protocolo para facilitar la inicialización de la vista del UIViewController'
  spec.source       = { :git => "https://svrgitpub.sdos.es/iOS/SDOSUIViewController.git", :tag => "v#{spec.version}" }
  spec.framework    = ['Foundation', 'UIKit']
  spec.requires_arc = true

  spec.subspec 'UIViewController' do |s2|
    s2.preserve_paths = 'src/Classes/*'
    s2.source_files = ['src/Classes/*{*.m,*.h,*.swift}', 'src/Classes/**/*{*.m,*.h,*.swift}']
  end

  spec.dependency 'SDOSCustomTypes', '~> 1.0'

end
