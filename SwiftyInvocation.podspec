
Pod::Spec.new do |s|
  s.name             = 'SwiftyInvocation'
  s.version          = '0.1.0'
  s.summary          = 'NSInvocation for Swift + helpers'
  s.description      = <<-DESC
Have you ever dreamed about using NSInvocation from Swift code?
You hate Apple for the NS_SWIFT_UNAVAILABLE macro?

Me neither.

But sometimes we just HAVE to use it. And here it is.
                       DESC

  s.homepage         = 'https://github.com/chorim/SwiftyInvocation'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'insu-byeon' => 'me@byeon.is' }
  s.source           = { :git => 'https://github.com/chorim/SwiftyInvocation.git', :tag => s.version.to_s }

  s.ios.deployment_target = '12.0'

  s.source_files = 'SwiftyInvocation/Classes/**/*'

  s.frameworks = 'Foundation'
end
