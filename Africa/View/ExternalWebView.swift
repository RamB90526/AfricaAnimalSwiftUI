//
//  ExternalWebView.swift
//  Africa
//
//  Created by ran mohan on 06/10/23.
//

import SwiftUI

struct ExternalWebView: View {
    let animalModel : AnilmalListModel
    var body: some View {
        HStack {
            Image(systemName: "globe")
            Text("Wikipedia")
            Spacer()
            Group {
                Image(systemName: "arrow.up.right.square")
                Link(animalModel.name, destination: URL(string: animalModel.link) ?? URL(string: "https://wikipedia.org")!)
            }
        }
    }
}

struct ExternalWebView_Previews: PreviewProvider {
    
    static let animals : [AnilmalListModel] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        ExternalWebView(animalModel: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
