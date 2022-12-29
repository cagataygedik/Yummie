//
//  DishCategory.swift
//  Yummie
//
//  Created by Celil Çağatay Gedik on 14.12.2022.
//

import Foundation

struct DishCategory: Decodable {
    let id: String?
    let name: String?
    let image: String?
    
    //This is for debugging because in our backend "DishCategory" named as a "title".
    enum CodingKeys: String, CodingKey {
        case id
        case name = "title"
        case image
    }
}
