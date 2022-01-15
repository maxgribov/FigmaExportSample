//
//  PromoView.swift
//  FigmaExportSample
//
//  Created by Max Gribov on 15.01.2022.
//

import SwiftUI

struct PromoView: View {
    
    let viewModel: PromoViewModel
    
    var body: some View {
        
        ZStack {
            
            Image(viewModel.back.imageName)
            
            
            VStack() {
                
                HStack {
                    
                    Text(viewModel.value)
                        .font(.promo())
                        .foregroundColor(Color("accent"))
                        .padding(.vertical, 2)
                        .padding(.horizontal, 5)
                        .background(Color("backgroundBase"))
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                    
                    Spacer()
                    
                }
                .padding(8)
                
                Spacer()
                
                ZStack {
                    
                    Color("accent")
                    
                    Text(viewModel.title)
                        .font(.heading3())
                        .foregroundColor(Color("textLight"))
                }
                .frame(height: 37)
            }
        }
        
        .frame(width: 224, height: 126)
        .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}

struct PromoView_Previews: PreviewProvider {
    static var previews: some View {
        PromoView(viewModel: .init(value: "50 %", title: "Новогоднее предложение", back: .winter))
            .previewLayout(.fixed(width: 375, height: 200))
    }
}
