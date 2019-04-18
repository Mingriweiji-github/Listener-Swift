# Uncomment the next line to define a global platform for your project
platform :ios, '9.0'

swift_41_pod_targets = ['Listener-master','SwiftMessages']
post_install do |installer|
  installer.pods_project.targets.each do |target|
    if swift_41_pod_targets.include?(target.name)
      target.build_configurations.each do |config|
        config.build_settings['SWIFT_VERSION'] = '4.2'
      end
    end
  end
end

target 'Listener-master' do
  use_frameworks!
  # 忽略引入库的所有警告
  inhibit_all_warnings!
  
  #A Swift Autolayout DSL for iOS & OS X
  pod 'SnapKit'
  #A lightweight, pure-Swift library for downloading and caching images from the web.
  pod 'Kingfisher'
  #A handy swift json-object serialization/deserialization library
  pod 'HandyJSON', '~> 5.0.0-beta.1'
  #The better way to deal with JSON data in Swift.
  pod 'SwiftyJSON'
  #Network abstraction layer written in Swift. based on Alamofire.
  pod 'Moya'
  
  #tabbar样式
  pod 'ESTabBarController-swift', '~> 2.6.2'
  #banner滚动图片
  pod 'FSPagerView'
  # 分页
  pod 'DNSPageView', '~> 1.0.1'
  #跑马灯
  pod 'JXMarqueeView'
  #滚动页
  pod 'LTScrollView'
  #消息提示
  pod 'SwiftMessages'
  #播放网络音频
  pod 'StreamingKit'
  
  pod 'SVProgressHUD'
  pod 'MJRefresh'
  #pod 'YYKit'
  #pod 'SkeletonView'
end


