@version = "1.0.3"
Pod::Spec.new do |spec|
  spec.platform     = :ios, '8.0'
  spec.name         = 'FillView'
  spec.author       = 'SDOS'
  spec.version      = @version
  spec.license      = { :type => 'SDOS License' }
  spec.homepage     = 'http://git.sdos.es/ios/FillView'
  spec.summary      = 'FillView es un componente encargado de realizar una vista con subvistas rellenables para conseguir un efecto termómetro. Permite añadir N subvistas para simular diferentes niveles, con distintas personalizaciones sobre cada uno de ellos.'
  spec.source       = { :git => "http://git.sdos.es/ios/FillView.git", :tag => "v#{spec.version}" }
  spec.framework    = ['Foundation', 'UIKit']
  spec.requires_arc = true
  spec.source_files = 'FillView/*.{h,m}'

  spec.dependency 'PureLayout'

end