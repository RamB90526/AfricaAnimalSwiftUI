//
//  ContentView.swift
//  Africa
//
//  Created by ran mohan on 04/10/23.
//

import SwiftUI

struct ContentView: View {
    
    let animals: [AnilmalListModel] = Bundle.main.decode("animals.json")
    
    var body: some View {
        
        NavigationView {
            List {
                CoverView()
                    .frame(height: 300)
                    .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animals) { animal in
                    
                    NavigationLink {
                        AnimalDetailView(animalObj: animal)
                    } label: {
                        AnimalListView(animalObj: animal)
                    }

                }
            }
            .navigationBarTitle("Africa", displayMode: .large)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
