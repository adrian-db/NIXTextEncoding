#
# Be sure to run `pod lib lint NIXTextEncoding.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "NIXTextEncoding"
  s.version          = "0.1.0"
  s.summary          = "Implements the Base64 encoding and decoding described in RFC 4748."
  s.homepage         = "https://github.com/adrian-db/NIXTextEncoding"
  s.license          = 'Apache'
  s.author           = { "Adrian David Bigland" => "a.d.bigland@gmail.com" }
  s.source           = { :git => "https://github.com/adrian-db/NIXTextEncoding.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/adrian_bigland'

  s.platform     = :ios, '4.3'
  s.requires_arc = false

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'NIXTextEncoding' => ['Pod/Assets/*.png']
  }

end
