@version = "1.0.0"
Pod::Spec.new do |spec|
  spec.platform     = :ios, '8.0'
  spec.name         = 'FillView'
  spec.author       = 'SDOS'
  spec.version      = @version
  spec.license      = { :type => 'SDOS License' }
  spec.homepage     = 'https://svrgitpub.sdos.es/iOS/FillView'
  spec.summary      = 'FillView es un componente encargado de realizar una vista con subvistas rellenables para conseguir un efecto termómetro. Permite añadir N subvistas para simular diferentes niveles, con distintas personalizaciones sobre cada uno de ellos.'
  spec.source       = { :git => "https://svrgitpub.sdos.es/iOS/FillView.git", :tag => "v#{spec.version}" }
  spec.framework    = ['Foundation', 'UIKit']
  spec.requires_arc = true
  spec.source_files = 'FillView/*.{h,m}'

  spec.dependency 'PureLayout'

end
