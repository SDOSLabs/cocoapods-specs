@version = "1.1.2"
Pod::Spec.new do |spec|
  spec.platform     = :ios, '9.0'
  spec.name         = 'SDOSPlayer'
  spec.authors      = 'SDOS'
  spec.version      = @version
  spec.license      = { :type => 'SDOS' }
  spec.homepage     = 'https://svrgitpub.sdos.es/iOS/SDOSPlayer'
  spec.summary      = 'Reproductor de audio'
  spec.source       = { :git => "https://svrgitpub.sdos.es/iOS/SDOSPlayer.git", :tag => "#{spec.version}" }
  spec.requires_arc = true
  spec.framework    = ['AdSupport', 'Foundation', 'UIKit']
  spec.subspec 'SDOSPlayer' do |s1|
    s1.source_files = 'src/SDOSPlayer/{*.m,*.h}'
    s1.public_header_files = 'src/SDOSPlayer/SDOSPlayerSDK.h', 'src/SDOSPlayer/SDOSPlayer.h', 'src/SDOSPlayer/SDOSPlayerCuePointEvent.h'
  end
end