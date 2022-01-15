//
//  CardViewModel.swift
//  FigmaExportSample
//
//  Created by Max Gribov on 15.01.2022.
//

import Foundation

struct CardViewModel: Identifiable {
    
    let id = UUID()
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

extension CardViewModel {
    
    static let sampleVisa = CardViewModel(paymentSystem: .visa, cardNumber: "0000 0000 0000 0000", balance: "1,05 млн руб.", back: .blue)
    
    static let sampleMastercard = CardViewModel(paymentSystem: .mastercard, cardNumber: "0000 0000 0000 0000", balance: "30 250 руб.", back: .pink)
}
