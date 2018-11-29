
Pod::Spec.new do |s|

  s.name         = "XCCustomItemView"
  s.version      = "0.0.3"
  s.summary      = "XCCustomItemView."

  s.description  = <<-DESC
XCCustomItemView.自定义图片和文字视图
                   DESC

  s.homepage     = "https://github.com/fanxiaocong/XCCustomItemView"

  s.license      = "MIT"

  s.author             = { "@fanxiaocong" => "1016697223@qq.com" }

  s.platform     = :ios, "9.0"


  s.source       = { :git => "https://github.com/fanxiaocong/XCCustomItemView.git", :tag => "#{s.version}" }

  s.source_files  = "XCCustomItemView/*.{h,m}"

end
