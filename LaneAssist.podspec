#
#  Be sure to run `pod spec lint LaneAssist.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "LaneAssist"
  s.version      = "2.0.0"
  s.summary      = "An Assistant for AutoLayout in Swift."

  s.description  = <<-DESC
                   Lane Assist is not a DSL on top of AutoLayout that you have to learn, instead Lane Assist let you create NSLayoutConstraints with some easy function calls. Method chaining makes it even more comfortable to use.
                   Try it and learn to love AutoLayout :).
                   DESC

  s.homepage     = "https://github.com/pixelkind/LaneAssist"

  s.license      = "MIT"

  s.author             = { "Garrit" => "contact@garrit.io" }
  s.social_media_url   = "http://twitter.com/pixelkindcom"

  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/pixelkind/LaneAssist.git", :tag => "2.0.0" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  s.source_files  = "LaneAssist/*.swift"

end
