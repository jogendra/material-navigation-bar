//
//  MaterialNavbar.swift
//  MaterialNavbar
//
//  Created by JOGENDRA on 27/11/18.
//  Copyright © 2018 Jogendra Singh. All rights reserved.
//

import UIKit

enum ThemeColor {
    case Red, Pink, Purple, DeepPurple, Indigo, Blue, LightBlue, Cyan, Teal, Green, LightGreen, Lime, Yellow, Amber, Orange, DeepOrange, Brown, Grey, BlueGrey

    func toColor() -> (statusBar: UIColor, navigationBar: UIColor) {
        switch self {
        case .Red:
            return (UIColor(red: 211 / 255.0, green: 47 / 255.0, blue: 47 / 255.0, alpha: 1),
                    UIColor(red: 244 / 255.0, green: 67 / 255.0, blue: 54 / 255.0, alpha: 1))
        case .Pink:
            return (UIColor(red: 194 / 255.0, green: 24 / 255.0, blue: 91 / 255.0, alpha: 1),
                    UIColor(red: 233 / 255.0, green: 30 / 255.0, blue: 99 / 255.0, alpha: 1))
        case .Purple:
            return (UIColor(red: 123 / 255.0, green: 31 / 255.0, blue: 162 / 255.0, alpha: 1),
                    UIColor(red: 156 / 255.0, green: 39 / 255.0, blue: 176 / 255.0, alpha: 1))
        case .DeepPurple:
            return (UIColor(red: 81 / 255.0, green: 45 / 255.0, blue: 168 / 255.0, alpha: 1),
                    UIColor(red: 103 / 255.0, green: 58 / 255.0, blue: 183 / 255.0, alpha: 1))
        case .Indigo:
            return (UIColor(red: 48 / 255.0, green: 63 / 255.0, blue: 159 / 255.0, alpha: 1),
                    UIColor(red: 63 / 255.0, green: 81 / 255.0, blue: 181 / 255.0, alpha: 1))
        case .Blue:
            return (UIColor(red: 26 / 255.0, green: 118 / 255.0, blue: 210 / 255.0, alpha: 1),
                    UIColor(red: 32 / 255.0, green: 150 / 255.0, blue: 243 / 255.0, alpha: 1))
        case .LightBlue:
            return (UIColor(red: 1 / 255.0, green: 136 / 255.0, blue: 209 / 255.0, alpha: 1),
                    UIColor(red: 4 / 255.0, green: 169 / 255.0, blue: 244 / 255.0, alpha: 1))
        case .Cyan:
            return (UIColor(red: 0, green: 151 / 255.0, blue: 167 / 255.0, alpha: 1),
                    UIColor(red: 1 / 255.0, green: 188 / 255.0, blue: 212 / 255.0, alpha: 1))
        case .Teal:
            return (UIColor(red: 0, green: 121 / 255.0, blue: 107 / 255.0, alpha: 1),
                    UIColor(red: 0, green: 150 / 255.0, blue: 136 / 255.0, alpha: 1))
        case .Green:
            return (UIColor(red: 56 / 255.0, green: 142 / 255.0, blue: 60 / 255.0, alpha: 1),
                    UIColor(red: 76 / 255.0, green: 175 / 255.0, blue: 80 / 255.0, alpha: 1))
        case .LightGreen:
            return (UIColor(red: 104 / 255.0, green: 159 / 255.0, blue: 56 / 255.0, alpha: 1),
                    UIColor(red: 139 / 255.0, green: 195 / 255.0, blue: 74 / 255.0, alpha: 1))
        case .Lime:
            return (UIColor(red: 175 / 255.0, green: 180 / 255.0, blue: 43 / 255.0, alpha: 1),
                    UIColor(red: 205 / 255.0, green: 220 / 255.0, blue: 57 / 255.0, alpha: 1))
        case .Yellow:
            return (UIColor(red: 251 / 255.0, green: 192 / 255.0, blue: 46 / 255.0, alpha: 1),
                    UIColor(red: 255 / 255.0, green: 235 / 255.0, blue: 59 / 255.0, alpha: 1))
        case .Amber:
            return (UIColor(red: 255 / 255.0, green: 160 / 255.0, blue: 1 / 255.0, alpha: 1),
                    UIColor(red: 255 / 255.0, green: 193 / 255.0, blue: 8 / 255.0, alpha: 1))
        case .Orange:
            return (UIColor(red: 245 / 255.0, green: 124 / 255.0, blue: 1 / 255.0, alpha: 1),
                    UIColor(red: 255 / 255.0, green: 152 / 255.0, blue: 1 / 255.0, alpha: 1))
        case .DeepOrange:
            return (UIColor(red: 230 / 255.0, green: 74 / 255.0, blue: 25 / 255.0, alpha: 1),
                    UIColor(red: 255 / 255.0, green: 87 / 255.0, blue: 35 / 255.0, alpha: 1))
        case .Brown:
            return (UIColor(red: 93 / 255.0, green: 64 / 255.0, blue: 55 / 255.0, alpha: 1),
                    UIColor(red: 121 / 255.0, green: 85 / 255.0, blue: 72 / 255.0, alpha: 1))
        case .Grey:
            return (UIColor(red: 97 / 255.0, green: 97 / 255.0, blue: 97 / 255.0, alpha: 1),
                    UIColor(red: 158 / 255.0, green: 158 / 255.0, blue: 158 / 255.0, alpha: 1))
        case .BlueGrey:
            return (UIColor(red: 69 / 255.0, green: 90 / 255.0, blue: 100 / 255.0, alpha: 1),
                    UIColor(red: 96 / 255.0, green: 125 / 255.0, blue: 139 / 255.0, alpha: 1))
        }
    }
}

class MaterialNavbar: UINavigationBar {

    var viewBarStatus: UIView!
    var titleLabel: UILabel!

    class MaterialNavbarParameter {

        var currentTheme: ThemeColor! = nil
        var currentNavigationBar: MaterialNavbar! = nil

        class var sharedInstance: MaterialNavbarParameter {

            struct Static {
                static var instance: MaterialNavbarParameter?
            }

            Static.instance = MaterialNavbarParameter()
            Static.instance?.currentTheme = ThemeColor.Grey

            return Static.instance!
        }
    }

    class func changeColorNavigationBar(color: ThemeColor) {
        MaterialNavbarParameter.sharedInstance.currentTheme = color
    }

    func animateTitle() {
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.45, initialSpringVelocity: 0.5,
                       options: UIView.AnimationOptions.allowAnimatedContent, animations: { () -> Void in
                        self.titleLabel.frame = CGRect(x: self.titleLabel.frame.size.width / 2, y: 0,
                                                       width: self.titleLabel.frame.size.width, height: self.titleLabel.frame.size.height)
        }, completion: nil)
    }

    func animationPop() {
        for currentSubView in self.subviews {
            if String(describing: currentSubView.self) == "_UINavigationBarBackIndicatorView" {

                (currentSubView as UIView).transform = CGAffineTransform(rotationAngle: CGFloat.pi)


                UIView.animate(withDuration: 1, delay: 0.3, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.5,
                               options: UIView.AnimationOptions.allowAnimatedContent, animations: { () -> Void in
                                (currentSubView as UIView).frame.origin.x = -currentSubView.frame.size.width
                                (currentSubView as UIView).transform = CGAffineTransform(rotationAngle: CGFloat(0))

                }, completion: nil)}
        }
    }

    func animateBackButton() {
        for currentSubView in self.subviews {
            if String(describing: currentSubView.self) == "_UINavigationBarBackIndicatorView" {

                (currentSubView as UIView).transform = CGAffineTransform(rotationAngle: CGFloat.pi)
                (currentSubView as UIView).frame.origin.x = -currentSubView.frame.size.width

                UIView.animate(withDuration: 1, delay: 0.3, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.5,
                               options: UIView.AnimationOptions.allowAnimatedContent, animations: { () -> Void in
                                (currentSubView as UIView).transform = CGAffineTransform(rotationAngle: CGFloat(0))
                                (currentSubView as UIView).frame.origin.x = 10

                }, completion: { (animaed: Bool) -> Void in
                })
            }
        }
    }

    func initBar() {

        self.tintColor = UIColor.white
        self.barTintColor = MaterialNavbarParameter.sharedInstance.currentTheme.toColor().navigationBar
        self.viewBarStatus = UIView(frame: CGRect(x:0, y: -20, width: UIScreen.main.bounds.size.width, height: 20))


        self.viewBarStatus.backgroundColor = MaterialNavbarParameter.sharedInstance.currentTheme.toColor().statusBar

        self.addSubview(self.viewBarStatus)
        self.titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: self.frame.height + 40))
        self.titleLabel.textAlignment = NSTextAlignment.center
        self.titleLabel.textColor = UIColor.white
        self.titleLabel.text = ""
        self.titleLabel.backgroundColor = self.barTintColor

        self.addSubview(titleLabel)

        self.backItem?.backBarButtonItem = nil

        self.animateBackButton()
        MaterialNavbarParameter.sharedInstance.currentNavigationBar = self
    }


    class func setTitle(title: String) {
        let navigationBar = MaterialNavbarParameter.sharedInstance.currentNavigationBar
        navigationBar?.titleLabel.text = title

        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 1, animations: { () -> Void in
            navigationBar?.titleLabel.text = title
            navigationBar?.titleLabel.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: navigationBar?.titleLabel.frame.size.height ?? 20)
        }) { (animated: Bool) -> Void in
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)

        initBar()
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

extension UINavigationController: UINavigationBarDelegate {

    public func navigationBar(navigationBar: UINavigationBar, didPushItem item: UINavigationItem) {
        (self.navigationBar as! MaterialNavbar).animateBackButton()
        (self.navigationBar as! MaterialNavbar).animateTitle()
    }

    public func navigationBar(navigationBar: UINavigationBar, didPopItem item: UINavigationItem) {
        (self.navigationBar as! MaterialNavbar).animationPop()
        (self.navigationBar as! MaterialNavbar).animateTitle()
    }
}
