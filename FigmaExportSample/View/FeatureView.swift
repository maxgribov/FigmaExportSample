//
//  FeatureView.swift
//  FigmaExportSample
//
//  Created by Max Gribov on 15.01.2022.
//

import SwiftUI

struct FeatureView: View {
    
    let viewModel: FeatureViewModel
    
    var body: some View {
        
        VStack(spacing: 25) {
            
            Image(viewModel.icon.iconName)
                .foregroundColor(Color("iconBase"))
            Text(viewModel.title)
                .font(.heading3())
                .foregroundColor(Color("textBase"))
        }
        .frame(width: 126, height: 126)
        .background(Color("backgroundMid"))
        .clipShape(RoundedRectangle(cornerRadius: 8))
        
    }
}

struct FeatureView_Previews: PreviewProvider {
    static var previews: some View {
        
        FeatureView(viewModel: .init(icon: .star, title: "Шаблоны"))
            .previewLayout(.fixed(width: 375, height: 200))
    }
}
