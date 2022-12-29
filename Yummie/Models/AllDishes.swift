//
//  AllDishes.swift
//  Yummie
//
//  Created by Celil Çağatay Gedik on 28.12.2022.
//

import Foundation

struct AllDishes: Decodable {
    let categories: [DishCategory]?
    let populars: [Dish]?
    let specials: [Dish]?
}
