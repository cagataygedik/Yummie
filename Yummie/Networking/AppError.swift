//
//  AppError.swift
//  Yummie
//
//  Created by Celil Çağatay Gedik on 27.12.2022.
//

import Foundation

enum AppError: LocalizedError {
    
    case errorDecoding
    case unknownError
    case invalidUrl
    case serverError(String)
    
    var errorDescription: String? {
        switch self {
            
        case .errorDecoding:
            return "Response could not be decoded"
        case .unknownError:
            return "We have no idea what is going on"
        case .invalidUrl:
            return "Give us a valid URL"
        case .serverError(let error):
            return error
        }
    }
}
