//
//  CardView.swift
//  FigmaExportSample
//
//  Created by Max Gribov on 15.01.2022.
//

import SwiftUI

struct CardView: View {
    
    let viewModel: CardViewModel
    
    var body: some View {
            
        ZStack {
            
            Image(viewModel.back.imageName)
                .clipShape(RoundedRectangle(cornerRadius: 8))
           
            VStack(alignment: .leading, spacing: 14) {
                
                Image(viewModel.paymentSystem.iconName)
                Text(viewModel.cardNumber)
                    .font(.heading3())
                    .foregroundColor(Color("textLight"))
                Text(viewModel.balance)
                    .font(.heading3())
                    .foregroundColor(Color("textLight"))
            }
        }
        .frame(width: 200, height: 126)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(viewModel: .init(paymentSystem: .visa, cardNumber: "0000 0000 0000 0000", balance: "1,05 млн руб.", back: .blue))
            .previewLayout(.fixed(width: 375, height: 200))
    }
}
