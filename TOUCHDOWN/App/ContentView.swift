//
//  ContentView.swift
//  TOUCHDOWN
//
//  Created by Soro on 2022-10-07.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack(spacing:0) {
                    NavigationBarView()
                        .padding(.horizontal,15)
                        .padding(.bottom)
                        .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(radius: 5)
        
                    ScrollView(.vertical,showsIndicators: false) {
                        VStack(spacing: 0){
                            FeaturedTabView()
                                .padding(.vertical,20)
                                .frame(height: 300)
                            
                            CategoryGridView()
                            
                            TitleView(title: "Helmets")
                            
                            LazyVGrid(columns: gridLayout,spacing: 15) {
                                ForEach(products){product in
                                    ProductItemView(product: product)
                                        .onTapGesture {
                                            feedback.impactOccurred()
                                            
                                            withAnimation(.easeOut){
                                                shop.selectedProduct = product
                                                shop.showingProduct = true
                                            }
                                        }
                                        
                                }
                            }
                            .padding(15)
                            
                            TitleView(title: "Brands")
                            BrandGridView()
                            
                            
                            FooterView()
                                .padding(.horizontal)
                        }
                    }
                    
                }
                .background(colorBackground.ignoresSafeArea(.all,edges: .all))
            }else{
                ProductDetailView()
            }
            
            }
        .ignoresSafeArea(.all,edges: .top)
        
    
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
