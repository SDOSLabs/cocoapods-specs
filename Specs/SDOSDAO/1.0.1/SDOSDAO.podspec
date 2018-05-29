@version = "1.0.1"
Pod::Spec.new do |spec|
  spec.platform     = :ios, '8.0'
  spec.name         = 'SDOSDAO'
  spec.authors      = 'SDOS'
  spec.version      = @version
  spec.license      = { :type => 'SDOS License' }
  spec.homepage     = 'http://git.sdos.es/ios/SDOSDAO'
  spec.summary      = 'Librería que proporciona una capa genérica de acceso a datos'
  spec.source       = { :git => "http://git.sdos.es/ios/SDOSDAO.git", :tag => "v#{spec.version}" }
  spec.framework    = ['Foundation']
  spec.requires_arc = true

  spec.subspec 'DAO' do |s2|
    s2.preserve_paths = 'src/Classes/*'
    s2.source_files = ['src/Classes/*{*.m,*.h,*.swift}', 'src/Classes/**/*{*.m,*.h,*.swift}']
  end
  
end
