@version = "1.0.0"
Pod::Spec.new do |spec|
  spec.platform     = :ios, '8.0'
  spec.name         = 'SHLineGraphViewCustom'
  spec.authors      = 'SDOS'
  spec.version      = @version
  spec.license      = { :type => 'MIT' }
  spec.homepage     = 'http://git.sdos.es/ios/SHLineGraphViewCustom'
  spec.summary      = 'SHLineGraphView` is a simple and efficient reusable UIView subview which you can use to create line graphs.'
  spec.source       = { :git => "http://git.sdos.es/ios/SHLineGraphViewCustom.git", :tag => "v#{spec.version}" }
  spec.requires_arc = true
  spec.source_files = 'SHLineGraphViewCustom/*.{h,m}'
end