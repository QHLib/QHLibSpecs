# coding: utf-8
Pod::Spec.new do |s|
  s.name         = "QHUILib"
  s.version      = "0.0.7"
  s.summary      = "QHUILib inlucdes UI related utils and classes."
  s.homepage     = "https://github.com/QHLib/QHUILib.git"
  s.license      = "MIT"
  s.author       = { "Tony Tang" => "tangchang21@gmail.com" }

  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/QHLib/QHUILib.git", :tag => s.version }

  s.requires_arc = true

  s.source_files  = "QHUILib/QHUILib.h", "QHUILib/QHUILib+All.h"
  s.public_header_files = "QHUILib/QHUILib.h", "QHUILib/QHUILib+All.h"
  s.prefix_header_contents = <<-EOS
                             EOS
  s.xcconfig = {
    "OTHER_LDFLAGS" => "-ObjC",
  }

  s.subspec 'QHBaseUI' do |ss|
    ss.source_files = "QHUILib/BaseUI/**/*.{h,m}"
    ss.public_header_files = "QHUILib/BaseUI/**/*.h"
    ss.frameworks = "UIKit"
    ss.dependency 'UIDevice-Hardware'
    ss.dependency 'QHCoreLib/QHBase'
  end

  s.subspec 'QHNetworkUI' do |ss|
    ss.source_files = "QHUILib/NetworkUI/**/*.{h,m}"
    ss.public_header_files = "QHUILib/NetworkUI/**/*.h"
    ss.private_header_files = "QHUILib/NetworkUI/AFNetworkActivityIndicatorManager.h"
    ss.frameworks = "UIKit"
    ss.dependency 'QHCoreLib/QHBase'
    ss.dependency 'QHCoreLib/QHNetwork'
  end

end
