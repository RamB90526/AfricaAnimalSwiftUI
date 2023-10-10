//
//  AnnotationAnimationView.swift
//  Africa
//
//  Created by ran mohan on 10/10/23.
//

import SwiftUI

struct AnnotationAnimationView: View {
    var location: NationalParkLocationModel
    @State private var animation: Double = 0.0
    var body: some View {
        
        ZStack {
            
            Circle()
                .fill(Color.accentColor)
                .frame(width: 54, height: 54, alignment: .center)
            
            Circle()
                .stroke(Color.accentColor)
                .frame(width: 52, height: 52, alignment: .center)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1 - animation)
            
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
        }
        .onAppear{
            withAnimation(Animation.easeOut(duration: 2).repeatForever(autoreverses: false)) {
                self.animation = 1
            }
        }
    }
}

struct AnnotationAnimationView_Previews: PreviewProvider {
    
    static let locations: [NationalParkLocationModel] = Bundle.main.decode("locations.json")
    
    static var previews: some View {
        AnnotationAnimationView(location: locations[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
