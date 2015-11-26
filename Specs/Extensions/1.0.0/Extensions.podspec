@version = "1.0.0"
Pod::Spec.new do |spec|
  spec.platform     = :ios, '8.0'
  spec.name         = 'Extensions'
  spec.authors      = 'SDOS'
  spec.version      = @version
  spec.license      = { :type => 'SDOS License' }
  spec.homepage     = 'http://git.sdos.es/ios/extensions'
  spec.summary      = 'Librería que añade funcionalidades a los tipos nativos'
  spec.source       = { :git => "http://git.sdos.es/ios/extensions.git", :tag => "v#{spec.version}" }
  spec.framework    = ['Foundation', 'UIKit', 'MapKit', 'Accelerate', 'QuartzCore', 'MessageUI', 'MobileCoreServices', 'AudioToolbox']
  spec.libraries    = 'z'
  spec.requires_arc = true

  spec.source_files = 'Extensions.h'
  spec.subspec 'CLLocationManager' do |s1|
    s1.source_files = 'CLLocationManager/{*.m,*.h}'
  end
  spec.subspec 'MFMailComposeViewController' do |s1|
    s1.source_files = 'MFMailComposeViewController/{*.m,*.h}'
  end
  spec.subspec 'MFMessageComposeViewController' do |s1|
    s1.source_files = 'MFMessageComposeViewController/{*.m,*.h}'
  end
  spec.subspec 'MKMapView' do |s1|
    s1.source_files = 'MKMapView/{*.m,*.h}'
  end
  spec.subspec 'NSArray' do |s1|
    s1.source_files = 'NSArray/{*.m,*.h}'
  end
  spec.subspec 'NSData' do |s1|
    s1.source_files = 'NSData/{*.m,*.h}'
  end
  spec.subspec 'NSDate' do |s1|
    s1.source_files = 'NSDate/{*.m,*.h}'
  end
  spec.subspec 'NSDictionary' do |s1|
    s1.source_files = 'NSDictionary/{*.m,*.h}'
  end
  spec.subspec 'NSJSONSerialization' do |s1|
    s1.source_files = 'NSJSONSerialization/{*.m,*.h}'
  end
  spec.subspec 'NSObject' do |s1|
    s1.source_files = 'NSObject/{*.m,*.h}'
  end
  spec.subspec 'NSScanner' do |s1|
    s1.source_files = 'NSScanner/{*.m,*.h}'
  end
  spec.subspec 'NSString' do |s1|
    s1.source_files = 'NSString/{*.m,*.h}'
  end
  spec.subspec 'NSTimer' do |s1|
    s1.source_files = 'NSTimer/{*.m,*.h}'
  end
  spec.subspec 'NSURLConnection' do |s1|
    s1.source_files = 'NSURLConnection/{*.m,*.h}'
  end
  spec.subspec 'NSURLRequest' do |s1|
    s1.source_files = 'NSURLRequest/{*.m,*.h}'
  end
  spec.subspec 'NSUserDefaults' do |s1|
    s1.source_files = 'NSUserDefaults/{*.m,*.h}'
  end
  spec.subspec 'Others' do |s1|
    s1.source_files = 'Others/{*.m,*.h}'
  end
  spec.subspec 'UIActionSheet' do |s1|
    s1.source_files = 'UIActionSheet/{*.m,*.h}'
  end
  spec.subspec 'UIAlertView' do |s1|
    s1.source_files = 'UIAlertView/{*.m,*.h}'
  end
  spec.subspec 'UIApplication' do |s1|
    s1.source_files = 'UIApplication/{*.m,*.h}'
  end
  spec.subspec 'UIBarButtonItem' do |s1|
    s1.source_files = 'UIBarButtonItem/{*.m,*.h}'
  end
  spec.subspec 'UICollectionViewCell' do |s1|
    s1.source_files = 'UICollectionViewCell/{*.m,*.h}'
  end
  spec.subspec 'UIColor' do |s1|
    s1.source_files = 'UIColor/{*.m,*.h}'
  end
  spec.subspec 'UIControl' do |s1|
    s1.source_files = 'UIControl/{*.m,*.h}'
  end
  spec.subspec 'UIGestureRecognizer' do |s1|
    s1.source_files = 'UIGestureRecognizer/{*.m,*.h}'
  end
  spec.subspec 'UIImage' do |s1|
    s1.source_files = 'UIImage/{*.m,*.h}'
  end
  spec.subspec 'UINavigationController' do |s1|
    s1.source_files = 'UINavigationController/{*.m,*.h}'
  end
  spec.subspec 'UIPickerView' do |s1|
    s1.source_files = 'UIPickerView/{*.m,*.h}'
  end
  spec.subspec 'UIPopoverController' do |s1|
    s1.source_files = 'UIPopoverController/{*.m,*.h}'
  end
  spec.subspec 'UIScrollView' do |s1|
    s1.source_files = 'UIScrollView/{*.m,*.h}'
  end
  spec.subspec 'UITabBarController' do |s1|
    s1.source_files = 'UITabBarController/{*.m,*.h}'
  end
  spec.subspec 'UITableViewCell' do |s1|
    s1.source_files = 'UITableViewCell/{*.m,*.h}'
  end
  spec.subspec 'UITextField' do |s1|
    s1.source_files = 'UITextField/{*.m,*.h}'
  end
  spec.subspec 'UIView' do |s1|
    s1.source_files = 'UIView/{*.m,*.h}'
  end
  spec.subspec 'UIViewController' do |s1|
    s1.source_files = 'UIViewController/{*.m,*.h}'
  end

  spec.dependency 'SFHFKeychainUtils', '~> 1.0'
end