Pod::Spec.new do |spec|

  spec.name         = "WBAdsTrackSDK"
  spec.version      = "1.0.0"
  spec.summary      = "auto track effectiveness"
  spec.description  = <<-DESC
                   "This is a sdk for weibo advertising effectiveness"
                   DESC
  spec.homepage     = "https://github.com/SpursTD"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author             = { "dawei20" => "dawei20@staff.weibo.com" }
  spec.platform     = :ios, "9.0"
  
  spec.source       = { :git => "https://github.com/SpursTD/WBAdsTrackSDK.git", :tag =>  
                        spec.version }
  spec.source_files  = "WBAdsTrackSDK/Headers/*.{h,m}"
  spec.vendored_library = "WBAdsTrackSDK/libWBAdsTrackSDK.a"
  spec.frameworks =  "Foundation","UIKit"
  spec.requires_arc = true

end
