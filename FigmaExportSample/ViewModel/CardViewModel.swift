//
//  CardViewModel.swift
//  FigmaExportSample
//
//  Created by Max Gribov on 15.01.2022.
//

import Foundation

struct CardViewModel {
    
    let paymentSystem: PaymentSystem
    let cardNumber: String
    let balance: String
    let back: Back
}

extension CardViewModel {
    
    enum PaymentSystem {
        
        case visa
        case mastercard
        
        var iconName: String {
            
            switch self {
            case .visa:
                return "ic58PaymentVisa"
                
            case .mastercard:
                return "ic58PaymentMastercard"
            }
        }
    }
    
    enum Back {
        
        case blue
        case pink
        case orange
        
        var imageName: String {
            
            switch self {
            case .blue:
                return "imgCardBlue"
            case .pink:
                return "imgCardPink"
            case .orange:
                return "imgCardOrange"
            }
        }
    }
}
