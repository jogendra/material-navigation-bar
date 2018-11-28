<img src="/Static/material-navbar-logo@2x.png">


# MaterialNavbar

Custom UINavigationBar with Google Material style for iOS

<img src="/Static/material_navbar.gif">

[![Build Status](https://travis-ci.org/jogendra/material-navigation-bar.svg?branch=master)](https://travis-ci.org/jogendra/material-navigation-bar)
[![Version](https://img.shields.io/cocoapods/v/MaterialNavbar.svg?style=flat)](https://cocoapods.org/pods/MaterialNavbar)
[![License](https://img.shields.io/cocoapods/l/MaterialNavbar.svg?style=flat)](https://cocoapods.org/pods/MaterialNavbar)
[![Platform](https://img.shields.io/cocoapods/p/MaterialNavbar.svg?style=flat)](https://cocoapods.org/pods/MaterialNavbar)

## Demo/Example
For demo:
```
$ pod try MaterialNavbar
```

To run the example project, clone the repo, and run `pod install` from the Example directory first.
```
$ cd Example
```
```
$ pod install
```
If you don't have CocoaPods installed, grab it with `[sudo] gem install cocoapods`.
```
$ open MaterialNavbar.xcworkspace
```

## Requirements
- iOS 10.0 or later
- Swift 4.2
- Xcode 10

## Installation

#### CocoaPods

MaterialNavbar is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'MaterialNavbar'
```

#### Manual Installation
Just drag the `MaterialNavbar.swift` files into your project.

## Usage
MaterialNavbar is a subclass of `UINavigationBar`, so you use it as usually. For init `MaterialNavbar` in a `UINavigationController` follow the example bellow:
```
var navigationController = UINavigationController(navigationBarClass: MaterialNavbar.self, toolbarClass: nil)
navigationController.viewControllers = [ViewController()]
```
#### Theme
To use a theme:
```
MaterialNavbar.changeColorNavigationBar(ThemeColor.Red)
```

Inspired by: RRNavigationBar

## Author

<table>
<tr>
<td>
     <img src="https://avatars2.githubusercontent.com/u/20956124?s=400&u=01fab3fc9bb3d2ee799e314d3fe23c54d1deeb07&v=4" width="180"/>
     
     Jogendra Kumar

<p align="center">
<a href = "https://github.com/jogendra"><img src = "http://www.iconninja.com/files/241/825/211/round-collaboration-social-github-code-circle-network-icon.svg" width="36" height = "36"/></a>
<a href = "https://twitter.com/imjog24"><img src = "https://www.shareicon.net/download/2016/07/06/107115_media.svg" width="36" height="36"/></a>
<a href = "https://www.linkedin.com/in/jogendrasingh24/"><img src = "http://www.iconninja.com/files/863/607/751/network-linkedin-social-connection-circular-circle-media-icon.svg" width="36" height="36"/></a>
</p>
</td>
</tr> 
</table>

## License

MaterialNavbar is available under the MIT license. See the [LICENSE](LICENSE) file for more info.
