Pod::Spec.new do |s|
  s.name = "SmartPush-iOS-SDK"
  s.version = "3.3.1"
  s.summary = "The SmartPush iOS SDK for User Engagement."
  s.description = <<-DESC
                    Smartech is a omni channel platform that delivers everything you need to drive mobile engagement and create valuable consumer relationships on mobile.
                    The SmartPush iOS SDK enables your native iOS app to use Push Notifications features.
                  DESC
  s.homepage = "https://netcoresmartech.com"
  s.documentation_url = "https://docs.netcoresmartech.com/docs/ios-customer-engagement"
  s.license = { :type => "Commercial", :file => "LICENSE" }
  s.author = { "Jobin Kurian" => "jobin.kurian@netcorecloud.com" }
  s.source = { :git => "https://github.com/NetcoreSolutions/SmartPush-iOS-SDK.git", :tag => "v#{s.version.to_s}" }
  s.ios.deployment_target = "10.0"
  s.ios.vendored_frameworks = "Frameworks/SmartPush/SmartPush.xcframework"
  s.frameworks = "Foundation", "UIKit", "SystemConfiguration", "Security", "CoreData"
  s.weak_framework = "UserNotifications"

  s.dependency "Smartech-iOS-SDK", '>= 3.3.1'
end
