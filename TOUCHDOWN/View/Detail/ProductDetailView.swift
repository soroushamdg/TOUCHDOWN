//
//  ProductDetailView.swift
//  TOUCHDOWN
//
//  Created by Soro on 2022-10-10.
//

import SwiftUI

struct ProductDetailView: View {
    var body: some View {
        VStack(alignment: .leading,spacing: 5) {
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            HeaderDetailView()
                .padding(.horizontal)
            
            TopPartDetailView()
                .padding(.horizontal)
            
            Spacer()
        }
        .ignoresSafeArea(.all,edges: .all)
        .background(Color(red:sampleProduct.red,
                          green: sampleProduct.green,
                          blue: sampleProduct.blue)
            .ignoresSafeArea(.all,edges: .all)
        )
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
