# Uncomment this line to define a global platform for your project
platform :ios, '8.0'
# Uncomment this line if you're using Swift
use_frameworks!

target 'Menthas' do
  pod 'Alamofire'
  pod 'SwiftyJSON'
  pod 'UIColor_Hex_Swift', '~> 1.8'
  pod 'SDWebImage', '~>3.7'
  pod 'APIKit', '~> 1.1.2'
end

target 'MenthasTests' do

end

target 'MenthasUITests' do

end

post_install do | installer |
  require 'fileutils'
  FileUtils.cp_r('Pods/Target Support Files/Pods-Menthas/Pods-Menthas-acknowledgements.plist', 'Menthas/Settings.bundle/Acknowledgements.plist', :remove_destination => true)
end
