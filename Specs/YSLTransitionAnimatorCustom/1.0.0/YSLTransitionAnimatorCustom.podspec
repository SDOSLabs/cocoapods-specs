@version = "1.0.0"
Pod::Spec.new do |s|
  s.name         = "YSLTransitionAnimatorCustom"
  s.version      = @version
  s.summary      = "a pinterest style transition animation"
  s.homepage     = "https://github.com/y-hryk/YSLTransitionAnimator"
  s.license      = { :type => 'MIT' }
  s.author       = { "y-hryk" => "dev.hy630823@gmail.com" }
  s.source       = { :svn => "http://svn.sdos.es/Sdos/ComponentesIOS/Librerias/YSLTransitionAnimator", :tag => @version }
  s.source_files = '*.{h,m}'
  s.requires_arc = true
  s.ios.deployment_target = '7.0'
end