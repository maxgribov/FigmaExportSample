//
//  PromoViewModel.swift
//  FigmaExportSample
//
//  Created by Max Gribov on 15.01.2022.
//

import Foundation

struct PromoViewModel: Identifiable {
    
    let id = UUID()
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

extension PromoViewModel {
    
    static let sampleWinter = PromoViewModel(value: "50 %", title: "Новогоднее предложение", back: .winter)
    static let sampleSpring = PromoViewModel(value: "33 %", title: "Весеннее предложение", back: .spring)
}
