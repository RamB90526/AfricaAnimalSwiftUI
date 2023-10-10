//
//  CoverView.swift
//  Africa
//
//  Created by ran mohan on 04/10/23.
//

import SwiftUI

struct CoverView: View {
    
    let coverImages: [CoverImagesModel] = Bundle.main.decode("covers.json")
    
    var body: some View {
        TabView {
            
            ForEach(coverImages) { image in
                Image(image.name)
                    .resizable()
                    .scaledToFill()
            }
            
            
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct CoverView_Previews: PreviewProvider {
    static var previews: some View {
        CoverView()
            .previewLayout(.fixed(width: 300, height: 400))
    }
}
