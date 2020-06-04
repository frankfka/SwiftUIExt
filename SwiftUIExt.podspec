Pod::Spec.new do |spec|

  spec.name         = "SwiftUIExt"
  spec.version      = "0.0.1"
  spec.summary      = "Useful extensions for SwiftUI"
  spec.description  = <<-DESC

Useful extensions for SwiftUI

                   DESC

  spec.homepage     = "https://github.com/frankfka/SwiftUIExt"
  spec.license      = "MIT"
  spec.author             = { "Frank Jia" => "jiafrank98@gmail.com" }

  spec.platform     = :ios, "13.0"
  spec.swift_version = '5.0'
  spec.source       = { :git => "https://github.com/frankfka/SwiftUIExt.git", :tag => "#{spec.version}" }

  spec.source_files  = "Sources/SwiftUIExt/**/*.swift"
end
