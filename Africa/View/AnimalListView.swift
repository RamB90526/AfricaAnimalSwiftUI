//
//  AnimalListView.swift
//  Africa
//
//  Created by ran mohan on 05/10/23.
//

import SwiftUI

struct AnimalListView: View {
    
    let animalObj: AnilmalListModel
    
    var body: some View {
        HStack(alignment: .center,spacing: 16) {
            Image(animalObj.image)
                .resizable()
                .scaledToFill()
                .frame(width:90, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            VStack(alignment: .leading, spacing: 8) {
                Text(animalObj.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(animalObj.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing,8)
            }
        }
    }
}

struct AnimalListView_Previews: PreviewProvider {
    static let animals: [AnilmalListModel] = Bundle.main.decode("animals.json")
    static var previews: some View {
        
        AnimalListView(animalObj: animals[0])
            .previewLayout(.sizeThatFits)
    }
}
