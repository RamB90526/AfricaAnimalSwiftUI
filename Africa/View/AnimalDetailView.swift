//
//  AnimalDetailView.swift
//  Africa
//
//  Created by ran mohan on 06/10/23.
//

import SwiftUI

struct AnimalDetailView: View {
    let animalObj: AnilmalListModel
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            
            VStack {
                Image(animalObj.image)
                    .resizable()
                    .scaledToFit()
                
                Text(animalObj.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background (
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y:24)
                    )
                
                Text(animalObj.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                
                Group {
                    HeadingView(headingText: "Wilderness in Pictures", headingImage: "photo.on.rectangle.angled")
                    ImageViewGallaryView(animal: animalObj)
                }
                .padding(.horizontal)
                
                // Facts
                Group {
                    HeadingView(headingText: "Did you know?", headingImage: "questionmark.circle")
                    InsetFactView(animal: animalObj)
                }
                .padding(.horizontal)
                
                // Discription
                
                Group {
                    HeadingView(headingText: "All about \(animalObj.name)", headingImage: "info.circle")
                    Text(animalObj.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                }
                .padding(.horizontal)
                
                // Map
                
                Group {
                    HeadingView(headingText: "Map", headingImage: "map")
                    InsetMapView()
                    
                }
                .padding(.horizontal)
                
                Group {
                    HeadingView(headingText: "Learn More", headingImage: "books.vertical")
                    
                    ExternalWebView(animalModel: animalObj)
                }
                .padding(.horizontal)
                
                
                
            }
            
            .navigationTitle("About \(animalObj.name)")
            .navigationBarTitleDisplayMode(.inline)
            
            
        }
        
        
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
    static let animals: [AnilmalListModel] = Bundle.main.decode("animals.json")
    static var previews: some View {
        NavigationView {
            AnimalDetailView(animalObj: animals[0])
        }
    }
}
