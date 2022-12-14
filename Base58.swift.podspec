Pod::Spec.new do |s|
  s.name             = 'Base58.swift'
  s.version          = '1.0.2'
  s.summary          = 'Base58 library, encode and decode.'
  s.homepage         = 'https://github.com/SunZhiC/Base58Swift'
  s.license          = { :type => 'MIT', :file => 'MIT-LICENSE.txt' }
  s.author           = { 'SunZhiC' => 'sunzhichao1314@live.cn' }
  s.source = { :git => 'https://github.com/SunZhiC/Base58Swift.git', :tag => 'v' + String(s.version) }
  s.source_files  = "Sources/**/*.swift"
  s.swift_version = '5.0'
  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.9"
  s.tvos.deployment_target = "9.0"
  s.watchos.deployment_target = "2.0"
  
  s.dependency "BigInt"
end


