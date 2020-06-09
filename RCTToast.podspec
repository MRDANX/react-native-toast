require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name                = 'RCTToast'
  s.version             = package['version']
  s.summary             = package['description']
  s.description         = package['description']
  s.homepage            = package['homepage']
  s.license             = package['license']
  s.author              = package['author']
  s.source              = { :git => 'https://github.com/remobile/react-native-toast.git', :tag => 'v'+s.version.to_s }

  s.platform              = :ios, '9.0'
  s.ios.deployment_target = '8.0'

  s.dependency 'React'

  s.preserve_paths      = 'README.md', 'LICENSE', 'package.json'
  s.source_files        = 'ios/**/*.{h,m}'
  s.exclude_files       = 'android/**/*'
end