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

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'SwiftLayout/**/*.{swift, h}'

end
