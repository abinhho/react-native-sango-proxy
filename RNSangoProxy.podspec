require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "RNSangoProxy"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  RNSangoProxy
                   DESC
  s.homepage     = "https://github.com/abinhho/react-native-sango-proxy"
  s.license      = "MIT"
  # s.license    = { :type => "MIT", :file => "FILE_LICENSE" }
  s.authors      = { "Binh Ho" => "abinh.ho@email.com" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/abinhho/react-native-sango-proxy.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m}"
  s.requires_arc = true

  s.dependency "React"
  # ...
  # s.dependency "..."
end

