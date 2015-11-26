@version = "1.0.0"
Pod::Spec.new do |spec|
  spec.platform     = :ios, '8.0'
  spec.name         = 'SFHFKeychainUtils'
  spec.authors      = 'SDOS'
  spec.version      = @version
  spec.license      = { :type => 'SDOS License' }
  spec.homepage     = 'http://git.sdos.es/ios/SFHFKeychainUtils'
  spec.summary      = 'Librería para acceder al llavero del dispositivo'
  spec.source       = { :git => "http://git.sdos.es/ios/SFHFKeychainUtils.git", :tag => "v#{spec.version}" }
  spec.framework    = ['Security']
  spec.requires_arc = true
  spec.source_files = '*.{h,m}'
end