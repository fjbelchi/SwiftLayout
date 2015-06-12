Pod::Spec.new do |s|
  s.name         = "SwiftLayout"
  s.version      = "0.0.1"
  s.summary      = "SwiftLayout make autolayout constraints fast!"

  s.description  = <<-DESC
                   * SwiftLayout make autolayout constraints fast
                   DESC

  s.homepage     = "http://www.github.com/fjbelchi/SwiftLayout"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "fjbelchi" => "dev@fjbelchi.com" }
  s.social_media_url   = "http://twitter.com/fjbelchi"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # s.platform     = :ios
  # s.platform     = :ios, "5.0"

  #  When using multiple platforms
  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"

  s.source       = { :git => "http://www.github.com/fjbelchi/SwiftLayout.git", :tag => "0.0.1" }
  s.source_files  = "Classes", "Classes/**/*.{h,m}"
  s.exclude_files = "Classes/Exclude"

end
