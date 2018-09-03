@version = "1.0.0"
Pod::Spec.new do |spec|
  spec.platform     = :ios, '8.0'
  spec.name         = 'GLGroupChatPicViewCustom'
  spec.author       = { "Gautam" => "glodhiya89@gmail.com" }
  spec.version      = @version
  spec.license      = { :type => 'MIT' }
  spec.homepage     = 'https://svrgitpub.sdos.es/iOS/GLGroupChatPicViewCustom'
  spec.summary	    = 'GLGroupChatPicView Inspired by https://dribbble.com/shots/1178958-Chat-Concept-2'
  spec.source       = { :git => "https://svrgitpub.sdos.es/iOS/GLGroupChatPicViewCustom.git", :tag => "v#{spec.version}" }
  spec.requires_arc = true
  spec.source_files = '*.{h,m}'
end
