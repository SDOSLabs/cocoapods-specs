@version = "0.6.1.fork"
Pod::Spec.new do |s|
  s.name             = "KZBootstrap"
  s.version          = @version
  s.summary          = "iOS project bootstrap aimed at high quality coding."
  s.description      = <<-DESC
                       Project bootstrap that provides automatic icon versioning, todo -> warning conversion, warnings while files become too long, build numbering, environment switching/validation and much more.
                       DESC
  s.homepage         = "https://github.com/krzysztofzablocki/KZBootstrap"
  s.license          = 'MIT'
  s.author           = { "Krzysztof Zablocki" => "krzysztof.zablocki@me.com" }
  s.source           = { :git => "https://github.com/krzysztofzablocki/KZBootstrap.git", :tag => "v#{s.version}" }
  s.social_media_url = 'https://twitter.com/merowing_'

  s.ios.deployment_target = '7.0'
  s.tvos.deployment_target = '9.0'
  s.requires_arc = true

	s.preserve_paths = "Pod/Assets/Scripts/*.{sh,swift}"

  s.public_header_files = 'Pod/Classes/**/*.h'
  s.requires_arc = true

  s.default_subspec = 'Core'

  s.subspec 'Core' do |ss|
    ss.source_files = 'Pod/Classes/Core'
    ss.frameworks = 'Foundation'
    ss.dependency 'KZAsserts', '~> 1.0.1'
  end

  s.subspec 'Debug' do |ss|
    ss.source_files = 'Pod/Classes/Debug'
    ss.dependency "RSSwizzle"
    ss.dependency 'KZAsserts', '~> 1.0.1'
  end

  s.subspec 'Logging' do |ss|
    ss.source_files = 'Pod/Classes/Logging'
    ss.dependency "CocoaLumberjack", "~> 2.3.0"
  end

end
