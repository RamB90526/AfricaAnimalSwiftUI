//
//  HeadingView.swift
//  Africa
//
//  Created by ran mohan on 06/10/23.
//

import SwiftUI

struct HeadingView: View {
    var headingText: String
    var headingImage: String
    
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
        }
        .padding(.vertical)
    }
}

struct HeadingView_Previews: PreviewProvider {

    static var previews: some View {
        HeadingView(headingText: "wilderness in Pictures", headingImage: "photo.on.rectangle.angled")
    }
}
