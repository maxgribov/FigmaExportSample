//
//  FeatureViewModel.swift
//  FigmaExportSample
//
//  Created by Max Gribov on 15.01.2022.
//

import Foundation

struct FeatureViewModel {
    
    let icon: Icon
    let title: String
    
}

extension FeatureViewModel {
    
    enum Icon {
        
        case star
        case arrows
        case qr
        case cal
        case clock
        case avatar
        
        var iconName: String {
            
            switch self {
            case .star:
                return "ic40FeatureStar"
            case .arrows:
                return "ic40FeatureArrows"
            case .qr:
                return "ic40FeatureQr"
            case .cal:
                return "ic40FeatureCal"
            case .clock:
                return "ic40FeatureClock"
            case .avatar:
                return "ic40FeatureAvatar"
            }
        }
    }
}
