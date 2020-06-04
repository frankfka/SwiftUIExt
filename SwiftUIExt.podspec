Pod::Spec.new do |spec|

  spec.name         = "SwiftUIExt"
  spec.version      = "0.0.1"
  spec.summary      = "Useful extensions for SwiftUI"
  spec.description  = <<-DESC

Useful extensions for SwiftUI

                   DESC

  spec.homepage     = "http://EXAMPLE/SwiftUIExt"
  spec.license      = "MIT"
  spec.author             = { "Frank Jia" => "jiafrank98@gmail.com" }

  spec.platform     = :ios, "13.0"
  spec.source       = { :git => "http://EXAMPLE/SwiftUIExt.git", :tag => "#{spec.version}" }

  spec.source_files  = "Sources/SwiftUIExt/**/*.{h,m}"
end
