Pod::Spec.new do |s|
  s.name         = "HDTableViewDataSource"
  s.version      = "0.0.3"
  s.summary  = '只需一行代码，通过链式语法快速为UITableView创建Delegate和DataSource，满足你对UITableView的所有幻想'
  s.homepage     = "https://github.com/hongdong/HDTableViewDataSource"
  s.license      = 'MIT'
  s.author       = { "Abner" => "fjhongdong@126.com" }
  s.source       = { :git => 'https://github.com/hongdong/HDTableViewDataSource.git',  :tag => "0.0.3"  }
  s.platform     = :ios, "7.0"
  s.source_files = "HDTableViewDataSource/*.{h,m}"
#  s.resources = ""
#  s.framework  = 'QuartzCore'
  s.requires_arc = true
  s.dependency 'MJRefresh'
  s.dependency 'UITableView+FDTemplateLayoutCell'


end

#pod spec lint --allow-warnings --use-libraries 校验命令
#pod trunk push HDTableViewDataSource.podspec --allow-warnings --use-libraries   上传命令