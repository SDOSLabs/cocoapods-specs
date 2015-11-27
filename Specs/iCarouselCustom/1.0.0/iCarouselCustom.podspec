@version = "1.0.0"
Pod::Spec.new do |spec|
  spec.platform     = :ios, '4.3'
  spec.name         = 'iCarouselCustom'
  spec.author       = { "Nick Lockwood" => "support@charcoaldesign.co.uk" }
  spec.version      = @version
  spec.license      = { :type => 'MIT' }
  spec.homepage     = 'http://git.sdos.es/ios/iCarouselCustom'
  spec.summary      = 'A class designed to simplify the implementation of various types of carousel.'
  spec.source       = { :git => "http://git.sdos.es/ios/iCarouselCustom.git", :tag => "v#{spec.version}" }
  spec.framework    = ['QuartzCore']
  spec.source_files = 'iCarouselCustom/*.{h,m}'
end