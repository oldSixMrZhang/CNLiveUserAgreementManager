#
# Be sure to run `pod lib lint CNLiveUserAgreementManager.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CNLiveUserAgreementManager'
  s.version          = '0.0.1'
  s.summary          = 'CNLiveUserAgreementManager'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: 网家家-用户协议管理类.
                       DESC

  s.homepage         = 'http://bj.gitlab.cnlive.com/ios-team/CNLiveUserAgreementManager'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '153993236@qq.com' => 'zhangxiaowen@cnlive.com' }
  s.source           = { :git => 'http://bj.gitlab.cnlive.com/ios-team/CNLiveUserAgreementManager.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'CNLiveUserAgreementManager/Classes/**/*'
  
  s.resource_bundles = {
    'CNLiveUserAgreementManager' => ['CNLiveUserAgreementManager/Assets/CNLiveUserAgreementManager.xcassets']
  }

  s.public_header_files = 'CNLiveUserAgreementManager/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'CNLiveTripartiteManagement/AFNetworking'

  # 数据请求
  s.dependency 'CNLiveRequestBastKit'
  
  # 类别
  s.dependency 'CNLiveCategory'
  
  # 管理类
  s.dependency 'CNLiveManager'
  
  # 基类
  s.dependency 'CNLiveBaseClass'

  s.static_framework = true

end
