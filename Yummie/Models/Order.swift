//
//  Order.swift
//  Yummie
//
//  Created by Celil Çağatay Gedik on 20.12.2022.
//

import Foundation

struct Order: Decodable {
    let id: String?
    let name: String?
    let dish: Dish?
}
