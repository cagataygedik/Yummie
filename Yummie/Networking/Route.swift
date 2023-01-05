//
//  Route.swift
//  Yummie
//
//  Created by Celil Çağatay Gedik on 23.12.2022.
//

import Foundation

enum Route {
    static let baseUrl = "https://yummie.glitch.me"
    
    case fetchAllCategories
    case placeOrder(String)
    case fetchOrders
    case fetchCategoryDishes(String)
    
    var description: String {
        
        switch self {
        case .fetchAllCategories:
            return "/dish-categories"
            
        case .placeOrder(let dishId):
            return  "/orders/\(dishId)"
            
        case .fetchCategoryDishes(let categoryId):
            return "/dishes/\(categoryId)"
            
        case .fetchOrders:
            return "/orders"
        }
        
    }
        
    
}
