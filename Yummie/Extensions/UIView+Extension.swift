//
//  UIView+Extension.swift
//  Yummie
//
//  Created by Celil Çağatay Gedik on 13.12.2022.
//

import UIKit

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return cornerRadius
        }
        set {
            self.layer.cornerRadius = newValue
        }
    }
}
