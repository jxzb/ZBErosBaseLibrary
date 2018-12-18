#
#  Be sure to run `pod spec lint ZbErosBaseLibrary.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "ZbErosBaseLibrary"
  s.version      = "0.1.0"
  s.summary      = "Weex rely on of ZBErosBaseLibrary for Eors"

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description  = <<-DESC
                      WeexEros 依赖库本地化
                   DESC

  s.homepage     = "https://github.com/jxzb/ZbErosBaseLibrary"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See http://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  s.author             = { "mashouyin" => "1021468678@qq.com" }
 

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # s.platform     = :ios
  s.platform     = :ios, "9.0"

  #  When using multiple platforms
  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

  s.source       = { :git => "https://github.com/jxzb/ZbErosBaseLibrary.git", :tag => "#{s.version}" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  s.requires_arc = true
  
  s.dependency 'YYText', '1.0.7'
  s.dependency 'Masonry', '1.1.0'
  s.dependency 'YYModel', '1.0.4'
  s.dependency 'SSZipArchive', '1.6.2'
  s.dependency 'YTKNetwork', '2.0.3'
  s.dependency 'SocketRocket', '0.4.2'
  s.dependency 'SDWebImage', '3.7.6'
  s.dependency 'MJRefresh', '3.1.12'
  s.dependency 'CTMediator', '13'

   #Device信息非ARC
  s.subspec 'BMDevice' do |ss|
    ss.source_files  = "Source/BMDevice/*.{c,h,m,mm,S}"
    ss.frameworks    = "Security"
    ss.requires_arc  = false
  end

  #自定义转场动画
  s.subspec 'BMTransition' do |ss|
    ss.source_files  = "Source/BMTransition/*.{c,h,m,mm,S}"
    ss.public_header_files = "Source/BMTransition/*.h"
    ss.requires_arc  = true
  end

  #Debug 相关类
  s.subspec 'BMDebug' do |ss|
    ss.source_files  = "Source/BMDebug/**/*.{c,h,m,mm,S}"
    ss.public_header_files = "Source/BMDebug/**/*.h"
    ss.requires_arc  = true
  end

  #对iOS系统类的拓展
  s.subspec 'BMExtension' do |ss|
    ss.source_files  = "Source/BMExtension/**/*.{c,h,m,mm,S}"
    ss.public_header_files = "Source/BMExtension/**/*.h"
    ss.requires_arc  = true
    ss.libraries = "bz2"
  end

  #对Weex系统类的拓展
  s.subspec 'BMWeexExtension' do |ss|
    ss.source_files  = "Source/BMWeexExtension/*.{c,h,m,mm,S}"
    ss.public_header_files = "Source/BMWeexExtension/*.h"
    ss.resources = 'Source/BMWeexExtension/Resources/*'
    ss.requires_arc  = true
  end

  #Controller类
  s.subspec 'BMController' do |ss|
    ss.source_files  = "Source/BMController/**/*.{c,h,m,mm,S}"
    ss.public_header_files = "Source/BMController/**/*.h"
    ss.requires_arc  = true
  end

  #Network类
  s.subspec 'BMNetwork' do |ss|
    ss.source_files  = "Source/BMNetwork/**/*.{c,h,m,mm,S}"
    ss.public_header_files = "Source/BMNetwork/**/*.h"
    ss.requires_arc  = true
  end

  #Weex Module
  s.subspec 'BMModule' do |ss|
    ss.source_files  = "Source/BMModule/**/*.{c,h,m,mm,S}"
    ss.public_header_files = "Source/BMModule/**/*.h"
    ss.resources = 'Source/BMModule/Modal/SVProgressHUD/SVProgressHUD.bundle'
    ss.requires_arc  = true
    ss.dependency "Realm",'3.1.0'
    ss.dependency "BindingX",'1.0.3'
    ss.dependency 'TZImagePickerController', '3.1.2'
  end

  #Weex BMManager
  s.subspec 'BMManager' do |ss|
    ss.source_files  = "Source/BMManager/**/*.{c,h,m,mm,S}"
    ss.public_header_files = "Source/BMManager/**/*.h"
    ss.requires_arc  = true
  end

  #自定义Handler
  s.subspec 'BMHandler' do |ss|
    ss.source_files  = "Source/BMHandler/*.{c,h,m,mm,S}"
    ss.public_header_files = "Source/BMHandler/*.h"
    ss.requires_arc  = true
  end

  #自定义CustomUI
  s.subspec 'BMCustomUI' do |ss|
    ss.source_files  = "Source/BMCustomUI/**/*.{c,h,m,mm,S}"
    ss.public_header_files = "Source/BMCustomUI/**/*.h"
    ss.requires_arc  = true
  end

  #自定义组件
  s.subspec 'BMComponent' do |ss|
    ss.source_files  = "Source/BMComponent/**/*.{c,h,m,mm,S}"
    ss.public_header_files = "Source/BMComponent/**/*.h"
    ss.requires_arc  = true
    ss.resources = 'Source/BMComponent/Calendar/Resources/*.png','Source/BMComponent/Chart/Resources/*'
    ss.dependency 'FSCalendar','2.7.8'
    ss.dependency 'YYText', '1.0.7'
  end

  #自定义组件
  s.subspec 'BMModel' do |ss|
    ss.source_files  = "Source/BMModel/*.{c,h,m,mm,S}"
    ss.public_header_files = "Source/BMModel/*.h"
    ss.requires_arc  = true
  end

  #ErosApp
  s.subspec 'ErosApp' do |ss|
    ss.source_files  = "Source/ErosApp/**/*.{c,h,m,mm,S,pch}"
    ss.public_header_files = "Source/ErosApp/**/*.h"
    ss.requires_arc  = true
    ss.prefix_header_file = 'Source/ErosApp/ErosDefine/PrefixHeader.pch'
  end

end
