//
//  InsetFactView.swift
//  Africa
//
//  Created by ran mohan on 06/10/23.
//

import SwiftUI

struct InsetFactView: View {
    let animal : AnilmalListModel
    var body: some View {
        
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
               
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        }
       
    }
}

struct InsetFactView_Previews: PreviewProvider {
    
   static let animalArray: [AnilmalListModel] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsetFactView(animal: animalArray[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
