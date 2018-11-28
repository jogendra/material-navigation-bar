Pod::Spec.new do |s|
    s.name             = 'MaterialNavbar'
    s.version          = '1.0.1'
    s.summary          = 'Custom UINavigationBar with Google Material style, for iOS written on Swift.'
    s.homepage         = 'https://github.com/jogendra/material-navigation-bar'
    s.social_media_url = 'https://twitter.com/imjog24'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Jogendra Kumar' => 'jogendra.iitbhu@gmail.com' }
    s.source           = { :git => 'https://github.com/jogendra/material-navigation-bar.git', :tag => s.version.to_s }
    s.ios.deployment_target = '10.0'
    s.swift_version = '4.2'
    s.source_files = 'MaterialNavbar/*.swift'
end
