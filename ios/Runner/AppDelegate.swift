
import UIKit
import Flutter


@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  private var textField = UITextField()
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
  //  self.window.makeSecure()
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
  // Screenshot Prevent Functions
 

      // <Add>
  // override func applicationWillResignActive(
  //   _ application: UIApplication
  // ) {
  //   self.window.isHidden = true;
  // }
  // override func applicationDidBecomeActive(
  //   _ application: UIApplication
  // ) {
  //   self.window.isHidden = false;
  // }

  
}
//   extension UIWindow {
//    func makeSecure() {
//     let field = UITextField()
//     field.isSecureTextEntry = true
//     self.addSubview(field)
//     field.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
//     field.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
//     self.layer.superlayer?.addSublayer(field.layer)
//     field.layer.sublayers?.first?.addSublayer(self.layer)
//   }
// }