//
//  AddToCartDetailView.swift
//  TOUCHDOWN
//
//  Created by Soro on 2022-10-11.
//

import SwiftUI

struct AddToCartDetailView: View {
    
    @EnvironmentObject var shop:Shop
    
    var body: some View {
        Button {
            feedback.impactOccurred()
        } label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2,design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        }
        .padding(15)
        .background(Color(red: shop.selectedProduct?.red ?? sampleProduct.red,green: shop.selectedProduct?.green ?? sampleProduct.green, blue: shop.selectedProduct?.blue ?? sampleProduct.blue))
        .clipShape(Capsule())

    }
}

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
        
    }
}
