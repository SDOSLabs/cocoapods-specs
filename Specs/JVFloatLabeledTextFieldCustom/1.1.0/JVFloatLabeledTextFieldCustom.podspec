@version = "1.1.0"
Pod::Spec.new do |spec|
  spec.platform     = :ios, '8.0'
  spec.name         = 'JVFloatLabeledTextFieldCustom'
  spec.authors      = { "Jared Verdi" => "jared@jaredverdi.com" }
  spec.version      = @version
  spec.license      = { :type => 'MIT' }
  spec.homepage     = 'https://svrgitpub.sdos.es/iOS/JVFloatLabeledTextFieldCustom'
  spec.summary      = 'The original UITextField subclass implementing the Float Label Pattern.'
  spec.source       = { :git => "https://svrgitpub.sdos.es/iOS/JVFloatLabeledTextFieldCustom.git", :tag => "v#{spec.version}" }
  spec.framework    = ['Foundation', 'UIKit']
  spec.requires_arc = true
  spec.source_files = 'JVFloatLabeledTextFieldCustom/*.{h,m}'
end
