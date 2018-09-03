@version = "1.2.1"
Pod::Spec.new do |spec|
  spec.platform     = :ios, '8.0'
  spec.name         = 'SDOSLocalizableString'
  spec.authors      = 'SDOS'
  spec.version      = @version
  spec.license      = { :type => 'SDOS License' }
  spec.homepage     = 'https://svrgitpub.sdos.es/iOS/SDOSLocalizableString'
  spec.summary      = 'Librería que únicamente proporciona el método LS() que sustituye a NSLocalizedString() y permite realizar un cambio de idioma de la app en caliente.'
  spec.source       = { :git => "https://svrgitpub.sdos.es/iOS/SDOSLocalizableString.git", :tag => "v#{spec.version}" }
  spec.framework    = ['Foundation']
  spec.requires_arc = true

  spec.subspec 'LocalizableString' do |s2|
    s2.preserve_paths = 'src/Classes/*'
    s2.source_files = ['src/Classes/*{*.m,*.h,*.swift}', 'src/Classes/**/*{*.m,*.h,*.swift}']
  end

end
