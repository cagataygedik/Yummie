//
//  UIView+Extension.swift
//  Yummie
//
//  Created by Celil Çağatay Gedik on 13.12.2022.
//

import UIKit

@IBDesignable extension UIButton {
    
    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }
}
