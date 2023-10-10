//
//  ImageViewGallaryView.swift
//  Africa
//
//  Created by ran mohan on 06/10/23.
//

import SwiftUI

struct ImageViewGallaryView: View {
    let animal : AnilmalListModel
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15) {
                ForEach(animal.gallery , id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                    .frame(height: 200)
                    .cornerRadius(10)
                }
            }
        }
    }
}

struct ImageViewGallaryView_Previews: PreviewProvider {
    static let animals: [AnilmalListModel] = Bundle.main.decode("animals.json")
    static var previews: some View {
        ImageViewGallaryView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .frame(height: 200)
    }
}
