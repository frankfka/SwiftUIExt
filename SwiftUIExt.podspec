Pod::Spec.new do |spec|

  spec.name         = "SwiftUIExt"
  spec.version      = "0.0.1"
  spec.summary      = "Useful extensions for SwiftUI"
  spec.description  = <<-DESC

SwiftUIExt is a collection of extensions and helpers for SwiftUI. These include functions to help streamline the
development workflow and/or introduce functionality that isn't included in the native SwiftUI library.

                   DESC

  spec.homepage     = "https://github.com/frankfka/SwiftUIExt"
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  spec.author             = { "Frank Jia" => "jiafrank98@gmail.com" }

  spec.platform     = :ios, "13.0"
  spec.swift_version = '5.2'
  spec.source       = { :git => "https://github.com/frankfka/SwiftUIExt.git", :tag => "#{spec.version}" }

  spec.source_files  = "Sources/SwiftUIExt/**/*.swift"
end
