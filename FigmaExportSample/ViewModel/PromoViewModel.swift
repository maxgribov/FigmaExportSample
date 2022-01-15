//
//  PromoViewModel.swift
//  FigmaExportSample
//
//  Created by Max Gribov on 15.01.2022.
//

import Foundation

struct PromoViewModel {
    
    let value: String
    let title: String
    let back: Back
}

extension PromoViewModel {
    
    enum Back {
        
        case winter
        case spring
        
        var imageName: String {
            
            switch self {
            case .winter: return "imgPromoWinter"
            case .spring: return "imgPromoSpring"
            }
        }
    }
}
