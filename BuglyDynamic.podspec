Pod::Spec.new do |spec|
  spec.name         = "BuglyDynamic"
  spec.version      = "0.1.9"
  spec.summary      = "BuglyDynamic for components"
  spec.description  = <<-DESC
                      BuglyDynamic for components
                      DESC
  spec.homepage     = "https://github.com/bbrichard/BuglyDynamic"
  spec.license      = "MIT. Copyright (c) 2019年 BB. All rights reserved."
  spec.author       = { "Richard" => "Richard@seektopser.com" }
  spec.platform     = :ios, "9.0"
  spec.ios.deployment_target = "9.0"

  spec.source = { :http  => 'https://raw.githubusercontent.com/bbrichard/BuglyDynamic/master/Products/BuglyDynamic.framework018.zip' }
  spec.frameworks = 'SystemConfiguration', 'Security'''
  
  spec.default_subspec = 'zip'
  spec.subspec 'zip' do |zip|
      puts '-------------------------------------------------------------------'
      puts 'Notice: BuglyDynamic is zip now'
      puts '-------------------------------------------------------------------'
      zip.ios.vendored_frameworks = '*.framework'
  end
  
  spec.prepare_command     = <<-EOF
  touch  BuglyDynamic.framework/Modules/module.modulemap
  cat <<-EOF > BuglyDynamic.framework/Modules/module.modulemap
  framework module UMMobClick {
      header "Bugly.h"
      header "BuglyConfig.h"
      header "BuglyLog.h"
  }
  \EOF
  EOF
end
