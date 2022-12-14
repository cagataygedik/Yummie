//
//  String+Extension.swift
//  Yummie
//
//  Created by Celil Çağatay Gedik on 14.12.2022.
//

import Foundation

extension String {
    var asUrl: URL? {
        return URL(string: self)
    }
}
