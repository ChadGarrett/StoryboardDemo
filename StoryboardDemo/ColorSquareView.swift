//
//  ColorSquareView.swift
//  StoryboardDemo
//
//  Created by Chad Garrett on 2022/06/29.
//

import UIKit

final class ColorSquareView: UIView {
    @IBOutlet var lblTop: UILabel!
    @IBOutlet var imgView: UIImageView!
    @IBOutlet var lblBottom: UILabel!
}

extension UIView {
    class func fromNib<T: UIView>() -> T {
        return Bundle(for: T.self).loadNibNamed(String(describing: T.self), owner: nil, options: nil)![0] as! T
    }
}
