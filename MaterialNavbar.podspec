Pod::Spec.new do |s|
    s.name             = 'MaterialNavbar'
    s.version          = '1.0.0'
    s.summary          = 'Custom UINavigationBar with Google Material style, for iOS written on Swift.'
    s.homepage         = 'https://github.com/jogendra/material-navigation-bar'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Jogendra Kumar' => 'jogendra.iitbhu@gmail.com' }
    s.source           = { :git => 'https://github.com/jogendra/material-navigation-bar.git', :tag => s.version }

    s.ios.deployment_target = '10.0'
    s.source_files = 'Source/*.swift'
end
