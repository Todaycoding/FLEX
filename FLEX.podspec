Pod::Spec.new do |spec|
  spec.name             = "FLEX"
  spec.version          = "4.4.0"
  spec.summary          = "A set of in-app debugging and exploration tools for iOS"
  spec.description      = <<-DESC
                        - Inspect and modify views in the hierarchy.
                        - View Detailed network request history.
                        - See the properties and ivars on any object.
                        - Dynamically modify many properties and ivars.
                        - Dynamically call instance and class methods.
                        - Access any live object via a scan of the heap.
                        - See system log messages (i.e. from `NSLog()`).
                        - View the file system within your app's sandbox.
                        - Explore all classes in your app and linked systems frameworks (public and private).
                        - Quickly access useful objects such as `[UIApplication sharedApplication]`, the app delegate, the root view controller on the key window, and more.
                        - Dynamically view and modify `NSUserDefaults` values.
                        DESC

  spec.homepage         = "https://github.com/FLEXTool/FLEX.git"

  spec.license          = { :type => "BSD", :file => "LICENSE" }
  spec.author           = { "Tanner Bennett" => "tannerbennett@me.com" }
  spec.platform         = :ios, "9.0"
  spec.source           = { :git => "https://github.com/Todaycoding/FLEX.git", :tag => spec.version.to_s }
  spec.frameworks       = [ "Foundation", "UIKit", "CoreGraphics", "ImageIO", "QuartzCore", "WebKit", "Security", "SceneKit" ]
  spec.libraries        = [ "z", "sqlite3"]
  spec.requires_arc     = true
  spec.compiler_flags   = "-Wno-unsupported-availability-guard -Wno-strict-prototypes"
  spec.pod_target_xcconfig = { 'VALID_ARCHS' => 'arm64' }
  
  spec.ios.vendored_frameworks = 'FLEX.framework'

end