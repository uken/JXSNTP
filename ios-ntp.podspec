Pod::Spec.new do |s|
  s.name         = "ios-ntp"
  s.version      = "1.0.0-Uken"
  s.summary      = "SNTP implementation for iOS."
  s.homepage     = "https://github.com/uken/JXSNTP.git"
  s.license      = 'MIT'
  s.source       = { :git => "https://github.com/uken/JXSNTP.git", :tag => s.version.to_s }
  s.author       = { "Adrian" => "adrian@uken.com" }

  s.ios.deployment_target = '4.3'

  s.source_files = 'src/*.{h,m}', 'src/**/*.{h,m}','lib/*.{h,m}',
  s.exclude_files = 'Classes/Exclude'
  s.framework = 'CFNetwork'

  s.requires_arc = false

end