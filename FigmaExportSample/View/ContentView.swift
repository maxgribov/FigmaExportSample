//
//  ContentView.swift
//  FigmaExportSample
//
//  Created by Max Gribov on 14.01.2022.
//

import SwiftUI

struct ContentView: View {
    
    let viewModel: ContentViewModel
    
    var body: some View {
        
        ScrollView {
            
            VStack(spacing: 30) {
                
                // Products
                VStack(alignment: .leading, spacing: 12) {
                    
                    Text(viewModel.products.title)
                        .font(.heading())
                        .foregroundColor(Color("textBase"))
                        .padding(.leading, 21)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        
                        HStack(spacing: 14) {
                            
                            ForEach(viewModel.products.items) { itemViewModel in
                                
                                CardView(viewModel: itemViewModel)
                            }
                        }
                        .padding(.horizontal, 21)
                    }
                }
                
                // Promos
                VStack(alignment: .leading, spacing: 12) {
                    
                    Text(viewModel.promos.title)
                        .font(.heading())
                        .foregroundColor(Color("textBase"))
                        .padding(.leading, 21)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        
                        HStack(spacing: 14) {
                            
                            ForEach(viewModel.promos.items) { itemViewModel in
                                
                                PromoView(viewModel: itemViewModel)
                            }
                        }
                        .padding(.horizontal, 21)
                    }
                }
                
                // Features
                VStack(alignment: .leading, spacing: 12) {
                    
                    Text(viewModel.features.title)
                        .font(.heading())
                        .foregroundColor(Color("textBase"))
                        .padding(.leading, 21)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        
                        HStack(spacing: 14) {
                            
                            ForEach(viewModel.features.items) { itemViewModel in
                                
                                FeatureView(viewModel: itemViewModel)
                            }
                        }
                        .padding(.horizontal, 21)
                    }
                }
                
                Spacer()
                
            }
            .padding(.top, 22)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ContentView(viewModel: .sample)
            .preferredColorScheme(.dark)
    }
}
