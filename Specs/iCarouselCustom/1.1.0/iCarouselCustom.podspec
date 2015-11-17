@version = "1.1.0"
Pod::Spec.new do |s|
  s.name             = "iCarouselCustom"
  s.version          = @version
  s.summary          = "A class designed to simplify the implementation of various types of carousel."

  s.homepage         = "https://github.com/nicklockwood/iCarousel"
  s.license          = 'MIT'
  s.author           = { "Nick Lockwood" => "support@charcoaldesign.co.uk" }
  s.source           = { :svn => "http://svn.sdos.es/Sdos/ComponentesIOS/Librerias/iCarousel", :tag => @version }

  s.platform     = :ios, '4.3'
  s.requires_arc = true
  s.framework    = ['QuartzCore']
  s.source_files = '**/*.{h,m}'
  s.resource_bundles = {
    'MaterialControls' => ['*.png']
  }
end