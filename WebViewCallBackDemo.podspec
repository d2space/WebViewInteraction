Pod::Spec.new do |s|

  s.name          = "WebViewCallBackDemo"
  s.version       = "1.0.1"
  s.license       = "MIT"
  s.summary       = "Fast encryption string used on iOS, which implement by Objective-C."
  s.homepage      = "https://github.com/d2space/WebViewInteraction"
  s.author        = { "d2space" => "d2space@126.com" }
  s.source        = { :git => "https://github.com/d2space/WebViewInteraction.git", :tag => "1.0.1" }
  s.requires_arc  = true
  s.description   = <<-DESC
                   Fast encryption string, the current support for MD5 (16, 32), Sha1, Base64
                   DESC
  s.source_files  = "NSDateHelper/*"
  s.platform      = :ios, '7.0'
  s.framework     = 'Foundation', 'JavaScriptCore', 'UIKit'  

end