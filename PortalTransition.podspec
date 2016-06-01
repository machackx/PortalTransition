
Pod::Spec.new do |s|

  s.name         = "PortalTransition"
  s.version      = "0.1.0"
  s.summary      = "iOS implementation of Portal like UIViewController transition"
  s.description  = <<-DESC
                        Inspired by Apple's keynote portal animation, it is an
                        iOS implementation of Portal like UIViewController transition.
                   DESC

  s.homepage     = "https://github.com/machackx/PortalTransition"
  s.screenshots  = "http://img.ceyang.me/portrait.gif", "http://img.ceyang.me/landscape.gif"
  s.license      = "MIT"
  s.author             = { "Yang Ce" => "ce.yang@me.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/machackx/PortalTransition.git", :tag => s.version.to_s }
  s.source_files  = "Classes", "PortalTransition/**/*.{h,m}"
  s.frameworks = "CoreGraphics", "QuartzCore"

end
