//
//  HeaderDetailView.swift
//  TOUCHDOWN
//
//  Created by Soro on 2022-10-10.
//

import SwiftUI

struct HeaderDetailView: View {
    var body: some View {
        VStack(alignment: .leading,spacing: 6, content: {
            Text("")
            
            Text(sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
            
        })
        .foregroundColor(.white)
    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
