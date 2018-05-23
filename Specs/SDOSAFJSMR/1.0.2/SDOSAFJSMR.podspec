@version = "1.0.2"
Pod::Spec.new do |spec|
  spec.platform     = :ios, '8.0'
  spec.name         = 'SDOSAFJSMR'
  spec.authors      = 'SDOS'
  spec.version      = @version
  spec.license      = { :type => 'SDOS License' }
  spec.homepage     = 'http://git.sdos.es/ios/SDOSAFJSMR'
  spec.summary      = 'Librería de integración entre AFNetworking, JSONModel y MagicalRecord'
  spec.source       = { :git => "http://git.sdos.es/ios/SDOSAFJSMR.git", :tag => "v#{spec.version}" }
  spec.framework    = ['Foundation']
  spec.requires_arc = true

  spec.subspec 'AFJSMR' do |s2|
    s2.preserve_paths = 'src/Classes/*'
    s2.source_files = ['src/Classes/*{*.m,*.h,*.swift}', 'src/Classes/**/*{*.m,*.h,*.swift}']
  end

  spec.dependency 'MagicalRecord'
  spec.dependency 'SDOSAFNetworkingJSONModel', '~> 1.0'

end
