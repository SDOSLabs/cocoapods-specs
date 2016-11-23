@version = "1.1.1"
Pod::Spec.new do |spec|
  spec.platform     = :ios, '8.0'
  spec.name         = 'Extensions'
  spec.authors      = 'SDOS'
  spec.version      = @version
  spec.license      = { :type => 'SDOS License' }
  spec.homepage     = 'http://git.sdos.es/ios/extensions'
  spec.summary      = 'Librería que añade funcionalidades a los tipos nativos'
  spec.source       = { :git => "http://git.sdos.es/ios/extensions.git", :tag => "v#{spec.version}" }
  spec.framework    =['Foundation', 'UIKit', 'MapKit', 'Accelerate', 'QuartzCore', 'MessageUI', 'MobileCoreServices', 'AudioToolbox']
  spec.libraries    = 'z'
  spec.requires_arc = true

  spec.subspec 'Extensions' do |s1|

    s1.source_files = 'src/Classes/Extensions.h'
    s1.subspec 'CLLocationManager' do |s2|
      s2.source_files = 'src/Classes/Categories/CLLocationManager/{*.m,*.h}'
    end
    s1.subspec 'MFMailComposeViewController' do |s2|
      s2.source_files = 'src/Classes/Categories/MFMailComposeViewController/{*.m,*.h}'
    end
    s1.subspec 'MFMessageComposeViewController' do |s2|
      s2.source_files = 'src/Classes/Categories/MFMessageComposeViewController/{*.m,*.h}'
    end
    s1.subspec 'MKMapView' do |s2|
      s2.source_files = 'src/Classes/Categories/MKMapView/{*.m,*.h}'
    end
    s1.subspec 'NSArray' do |s2|
      s2.source_files = 'src/Classes/Categories/NSArray/{*.m,*.h}'
    end
    s1.subspec 'NSData' do |s2|
      s2.source_files = 'src/Classes/Categories/NSData/{*.m,*.h}'
    end
    s1.subspec 'NSDate' do |s2|
      s2.source_files = 'src/Classes/Categories/NSDate/{*.m,*.h}'
    end
    s1.subspec 'NSDateformatter' do |s2|
      s2.source_files = 'src/Classes/Categories/NSDateformatter/{*.m,*.h}'
    end
    s1.subspec 'NSDictionary' do |s2|
      s2.source_files = 'src/Classes/Categories/NSDictionary/{*.m,*.h}'
    end
    s1.subspec 'NSJSONSerialization' do |s2|
      s2.source_files = 'src/Classes/Categories/NSJSONSerialization/{*.m,*.h}'
    end
    s1.subspec 'NSObject' do |s2|
      s2.source_files = 'src/Classes/Categories/NSObject/{*.m,*.h}'
    end
    s1.subspec 'NSScanner' do |s2|
      s2.source_files = 'src/Classes/Categories/NSScanner/{*.m,*.h}'
    end
    s1.subspec 'NSString' do |s2|
      s2.source_files = 'src/Classes/Categories/NSString/{*.m,*.h}'
    end
    s1.subspec 'NSTimer' do |s2|
      s2.source_files = 'src/Classes/Categories/NSTimer/{*.m,*.h}'
    end
    s1.subspec 'NSURLConnection' do |s2|
      s2.source_files = 'src/Classes/Categories/NSURLConnection/{*.m,*.h}'
    end
    s1.subspec 'NSURLRequest' do |s2|
      s2.source_files = 'src/Classes/Categories/NSURLRequest/{*.m,*.h}'
    end
    s1.subspec 'NSUserDefaults' do |s2|
      s2.source_files = 'src/Classes/Categories/NSUserDefaults/{*.m,*.h}'
    end
    s1.subspec 'Others' do |s2|
      s2.source_files = 'src/Classes/Categories/Others/{*.m,*.h}'
    end
    s1.subspec 'UIActionSheet' do |s2|
      s2.source_files = 'src/Classes/Categories/UIActionSheet/{*.m,*.h}'
    end
    s1.subspec 'UIAlertView' do |s2|
      s2.source_files = 'src/Classes/Categories/UIAlertView/{*.m,*.h}'
    end
    s1.subspec 'UIApplication' do |s2|
      s2.source_files = 'src/Classes/Categories/UIApplication/{*.m,*.h}'
    end
    s1.subspec 'UIBarButtonItem' do |s2|
      s2.source_files = 'src/Classes/Categories/UIBarButtonItem/{*.m,*.h}'
    end
    s1.subspec 'UICollectionViewCell' do |s2|
      s2.source_files = 'src/Classes/Categories/UICollectionViewCell/{*.m,*.h}'
    end
    s1.subspec 'UIColor' do |s2|
      s2.source_files = 'src/Classes/Categories/UIColor/{*.m,*.h}'
    end
    s1.subspec 'UIControl' do |s2|
      s2.source_files = 'src/Classes/Categories/UIControl/{*.m,*.h}'
    end
    s1.subspec 'UIGestureRecognizer' do |s2|
      s2.source_files = 'src/Classes/Categories/UIGestureRecognizer/{*.m,*.h}'
    end
    s1.subspec 'UIImage' do |s2|
      s2.source_files = 'src/Classes/Categories/UIImage/{*.m,*.h}'
    end
    s1.subspec 'UINavigationController' do |s2|
      s2.source_files = 'src/Classes/Categories/UINavigationController/{*.m,*.h}'
    end
    s1.subspec 'UIPickerView' do |s2|
      s2.source_files = 'src/Classes/Categories/UIPickerView/{*.m,*.h}'
    end
    s1.subspec 'UIPopoverController' do |s2|
      s2.source_files = 'src/Classes/Categories/UIPopoverController/{*.m,*.h}'
    end
    s1.subspec 'UIScrollView' do |s2|
      s2.source_files = 'src/Classes/Categories/UIScrollView/{*.m,*.h}'
    end
    s1.subspec 'UITabBarController' do |s2|
      s2.source_files = 'src/Classes/Categories/UITabBarController/{*.m,*.h}'
    end
    s1.subspec 'UITableViewCell' do |s2|
      s2.source_files = 'src/Classes/Categories/UITableViewCell/{*.m,*.h}'
    end
    s1.subspec 'UITableViewHeaderFooterView' do |s2|
      s2.source_files = 'src/Classes/Categories/UITableViewHeaderFooterView/{*.m,*.h}'
    end
    s1.subspec 'UITextField' do |s2|
      s2.source_files = 'src/Classes/Categories/UITextField/{*.m,*.h}'
    end
    s1.subspec 'UIView' do |s2|
      s2.source_files = 'src/Classes/Categories/UIView/{*.m,*.h}'
    end
    s1.subspec 'UIViewController' do |s2|
      s2.source_files = 'src/Classes/Categories/UIViewController/{*.m,*.h}'
    end
  end
  spec.dependency 'SFHFKeychainUtils', '~> 1.0'
  spec.dependency 'CocoaSecurity'
end
