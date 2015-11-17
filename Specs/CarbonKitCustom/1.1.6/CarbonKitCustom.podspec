Pod::Spec.new do |spec|
  spec.name         = 'CarbonKitCustom'
  spec.authors      = { "Ermal Kaleci" => "ermalkaleci@gmail.com" }
  spec.version      = '1.1.6'
  spec.license      = { :type => 'MIT' }
  spec.homepage     = 'https://github.com/ermalkaleci/CarbonKit'
  spec.summary      = 'CarbonKit is an iOS OpenSource libraries collection'
  spec.source       = { :svn => "http://svn.sdos.es/Sdos/ComponentesIOS/Librerias/CarbonKit", :tag => "1.1.6" }
  spec.source_files  = "*.{h,m}"
  spec.public_header_files = "*.h"
  spec.requires_arc = true
  spec.platform     = :ios, "7.0"
end