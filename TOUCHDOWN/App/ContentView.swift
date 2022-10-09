//
//  ContentView.swift
//  TOUCHDOWN
//
//  Created by Soro on 2022-10-07.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
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
                        
                                                
                        FooterView()
                            .padding(.horizontal)
                    }
                }
               
            }
            .background(colorBackground.ignoresSafeArea(.all,edges: .all))
        }
        .ignoresSafeArea(.all,edges: .top)
        
    
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
