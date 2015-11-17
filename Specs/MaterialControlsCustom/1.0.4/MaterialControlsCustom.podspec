@version = "1.0.4"
Pod::Spec.new do |s|
  s.name             = "MaterialControlsCustom"
  s.version          = @version
  s.summary          = "Material Design controls for iOS writen in Objective-C."

  s.homepage         = "https://github.com/fpt-software/Material-Controls-For-iOS"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "FPT Software" => "mobility@fsoft.com.vn" }
  s.source           = { :svn => "http://svn.sdos.es/Sdos/ComponentesIOS/Librerias/MaterialControls", :tag => @version }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = '**/*.{h,m}'
  s.resource_bundles = {
    'MaterialControls' => ['*.png']
  }
end