@version = "1.0.2" 
Pod::Spec.new do |spec|
  spec.platform     = :ios, '8.0'
  spec.name         = 'Extensions'
  spec.authors      = 'SDOS'
  spec.version      = @version
  spec.license      = { :type => 'SDOS License' }
  spec.homepage     = 'https://svrgitpub.sdos.es/iOS/extensions'
  spec.summary      = 'Librería que añade funcionalidades a los tipos nativos'
  spec.source       = { :git => "https://svrgitpub.sdos.es/iOS/extensions.git", :tag => "v#{spec.version}" }
  spec.framework    = ['Foundation', 'UIKit', 'MapKit', 'Accelerate', 'QuartzCore', 'MessageUI', 'MobileCoreServices', 'AudioToolbox']
  spec.libraries    = 'z'
  spec.requires_arc = true

  spec.source_files = 'Extensions/Extensions.h'
  spec.subspec 'CLLocationManager' do |s1|
    s1.source_files = 'Extensions/CLLocationManager/{*.m,*.h}'
  end
  spec.subspec 'MFMailComposeViewController' do |s1|
    s1.source_files = 'Extensions/MFMailComposeViewController/{*.m,*.h}'
  end
  spec.subspec 'MFMessageComposeViewController' do |s1|
    s1.source_files = 'Extensions/MFMessageComposeViewController/{*.m,*.h}'
  end
  spec.subspec 'MKMapView' do |s1|
    s1.source_files = 'Extensions/MKMapView/{*.m,*.h}'
  end
  spec.subspec 'NSArray' do |s1|
    s1.source_files = 'Extensions/NSArray/{*.m,*.h}'
  end
  spec.subspec 'NSData' do |s1|
    s1.source_files = 'Extensions/NSData/{*.m,*.h}'
  end
  spec.subspec 'NSDate' do |s1|
    s1.source_files = 'Extensions/NSDate/{*.m,*.h}'
  end
  spec.subspec 'NSDictionary' do |s1|
    s1.source_files = 'Extensions/NSDictionary/{*.m,*.h}'
  end
  spec.subspec 'NSJSONSerialization' do |s1|
    s1.source_files = 'Extensions/NSJSONSerialization/{*.m,*.h}'
  end
  spec.subspec 'NSObject' do |s1|
    s1.source_files = 'Extensions/NSObject/{*.m,*.h}'
  end
  spec.subspec 'NSScanner' do |s1|
    s1.source_files = 'Extensions/NSScanner/{*.m,*.h}'
  end
  spec.subspec 'NSString' do |s1|
    s1.source_files = 'Extensions/NSString/{*.m,*.h}'
  end
  spec.subspec 'NSTimer' do |s1|
    s1.source_files = 'Extensions/NSTimer/{*.m,*.h}'
  end
  spec.subspec 'NSURLConnection' do |s1|
    s1.source_files = 'Extensions/NSURLConnection/{*.m,*.h}'
  end
  spec.subspec 'NSURLRequest' do |s1|
    s1.source_files = 'Extensions/NSURLRequest/{*.m,*.h}'
  end
  spec.subspec 'NSUserDefaults' do |s1|
    s1.source_files = 'Extensions/NSUserDefaults/{*.m,*.h}'
  end
  spec.subspec 'Others' do |s1|
    s1.source_files = 'Extensions/Others/{*.m,*.h}'
  end
  spec.subspec 'UIActionSheet' do |s1|
    s1.source_files = 'Extensions/UIActionSheet/{*.m,*.h}'
  end
  spec.subspec 'UIAlertView' do |s1|
    s1.source_files = 'Extensions/UIAlertView/{*.m,*.h}'
  end
  spec.subspec 'UIApplication' do |s1|
    s1.source_files = 'Extensions/UIApplication/{*.m,*.h}'
  end
  spec.subspec 'UIBarButtonItem' do |s1|
    s1.source_files = 'Extensions/UIBarButtonItem/{*.m,*.h}'
  end
  spec.subspec 'UICollectionViewCell' do |s1|
    s1.source_files = 'Extensions/UICollectionViewCell/{*.m,*.h}'
  end
  spec.subspec 'UIColor' do |s1|
    s1.source_files = 'Extensions/UIColor/{*.m,*.h}'
  end
  spec.subspec 'UIControl' do |s1|
    s1.source_files = 'Extensions/UIControl/{*.m,*.h}'
  end
  spec.subspec 'UIGestureRecognizer' do |s1|
    s1.source_files = 'Extensions/UIGestureRecognizer/{*.m,*.h}'
  end
  spec.subspec 'UIImage' do |s1|
    s1.source_files = 'Extensions/UIImage/{*.m,*.h}'
  end
  spec.subspec 'UINavigationController' do |s1|
    s1.source_files = 'Extensions/UINavigationController/{*.m,*.h}'
  end
  spec.subspec 'UIPickerView' do |s1|
    s1.source_files = 'Extensions/UIPickerView/{*.m,*.h}'
  end
  spec.subspec 'UIPopoverController' do |s1|
    s1.source_files = 'Extensions/UIPopoverController/{*.m,*.h}'
  end
  spec.subspec 'UIScrollView' do |s1|
    s1.source_files = 'Extensions/UIScrollView/{*.m,*.h}'
  end
  spec.subspec 'UITabBarController' do |s1|
    s1.source_files = 'Extensions/UITabBarController/{*.m,*.h}'
  end
  spec.subspec 'UITableViewHeaderFooterView' do |s1|
    s1.source_files = 'Extensions/UITableViewHeaderFooterView/{*.m,*.h}'
  end
  spec.subspec 'UITableViewCell' do |s1|
    s1.source_files = 'Extensions/UITableViewCell/{*.m,*.h}'
  end
  spec.subspec 'UITextField' do |s1|
    s1.source_files = 'Extensions/UITextField/{*.m,*.h}'
  end
  spec.subspec 'UIView' do |s1|
    s1.source_files = 'Extensions/UIView/{*.m,*.h}'
  end
  spec.subspec 'UIViewController' do |s1|
    s1.source_files = 'Extensions/UIViewController/{*.m,*.h}'
  end

  spec.dependency 'SFHFKeychainUtils', '~> 1.0'
  spec.dependency 'CocoaSecurity'
end
