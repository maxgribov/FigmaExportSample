//
//  ContentViewModel.swift
//  FigmaExportSample
//
//  Created by Max Gribov on 15.01.2022.
//

import Foundation

struct ContentViewModel {
    
    let products: Products
    let promos: Promos
    let features: Features
}

extension ContentViewModel {
    
    struct Products {
        
        let title = "Продукты"
        let items: [CardViewModel]
    }
    
    struct Promos {
        
        let title = "Специальные предложения"
        let items: [PromoViewModel]
    }
    
    struct Features {
        
        let title = "Опции"
        let items: [FeatureViewModel]
    }
}

extension ContentViewModel {
    
    static let sample = ContentViewModel(products: .init(items: [.sampleVisa, .sampleMastercard]),
                                         promos: .init(items: [.sampleWinter, .sampleSpring]),
                                         features: .init(items: [.sampleTemplates, .sampleReturns, .sampleQr]))
}
