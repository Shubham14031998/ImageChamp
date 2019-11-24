#
# Be sure to run `pod lib lint ImageChamp.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ImageChamp'
  s.version          = '0.1.0'
  s.summary          = 'ImageChamp is used to download image from server'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
it is used to download image from server and it is used to pick image from gallery and camera.
                       DESC

  s.homepage         = 'https://github.com/Shubham14031998/ImageChamp'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'shubham kaliyar' => 'shubhamkaliyar255@gmail.com' }
  s.source           = { :git => 'https://github.com/Shubham14031998/ImageChamp.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'ImageChamp/Classes/**/*'
  
  # s.resource_bundles = {
  #   'ImageChamp' => ['ImageChamp/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
   s.frameworks = 'UIKit'
#   , 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
