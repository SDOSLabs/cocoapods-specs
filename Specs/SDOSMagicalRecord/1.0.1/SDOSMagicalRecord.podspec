@version = "1.0.1"
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

  spec.subspec 'MagicalRecord' do |s2|
    s2.preserve_paths = 'src/Classes/*'
    s2.source_files = ['src/Classes/*{*.m,*.h,*.swift}', 'src/Classes/**/*{*.m,*.h,*.swift}']
  end

  spec.dependency 'MagicalRecord', '~> 2.3'
  spec.dependency 'SDOSDAO', '~> 1.0'

end
