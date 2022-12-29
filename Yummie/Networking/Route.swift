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
    
    var description: String {
        
        switch self {
        case .fetchAllCategories:
            return "/dish-categories"
        }
        
    }
        
    
}
