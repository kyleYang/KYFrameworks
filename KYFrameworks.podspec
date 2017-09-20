#
# Be sure to run `pod lib lint KYFrameworks.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'KYFrameworks'
  s.version          = '4.0.0'
  s.summary          = 'The App Framework for KyleYang'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
All of the code is managed by Kyle Yang, It's the app architecture
                       DESC

  s.homepage         = 'https://github.com/kyleYang/KYFrameworks'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'kyleYang' => 'yangzychina@gmail.com' }
  s.source           = { :git => 'https://github.com/kyleYang/KYFrameworks.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
    s.default_subspec = "All"

  s.ios.deployment_target = '9.0'

  s.source_files = 'KYFrameworks/Classes/**/*'

  s.subspec "All" do |ss|
    ss.source_files  = "Sources/All/**/*"
    #ss.dependency "Alamofire", "~> 4.1"
    ss.dependency "KYFrameworks/UI"
    ss.dependency "KYFrameworks/Service"
    #ss.framework  = "Foundation"
  end

  s.subspec "UI" do |ss|
    ss.source_files  = "Sources/UI/**/*"
    s.dependency 'RxSwift', '~> 4.0.0-beta.0'
    s.dependency 'RxCocoa', '~> 4.0.0-beta.0'
    #ss.framework  = "Foundation"
  end

  s.subspec "Service" do |ss|
    ss.source_files = "Sources/Service/**/*"
    #ss.dependency "Moya/Core"
    #ss.dependency "RxSwift", "~> 3.3"
  end


  # s.resource_bundles = {
  #   'KYFrameworks' => ['KYFrameworks/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
#   s.dependency 'Alamofire'
#   s.dependency 'Moya'
#   s.dependency 'RxSwift', '~> 4.0.0-beta.0'
#   s.dependency 'RxCocoa', '~> 4.0.0-beta.0'
# s.dependency 'ObjectMapper', '~> 2.2.9'
#   s.dependency 'SnapKit', '~> 4.0.0'
# s.dependency 'XCGLogger', '~> 5.0.1'
#   s.dependency 'SwiftyJSON', '~> 4.0.0-alpha.1'
end
