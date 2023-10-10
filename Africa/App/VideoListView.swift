//
//  VideoListView.swift
//  Africa
//
//  Created by ran mohan on 04/10/23.
//

import SwiftUI

struct VideoListView: View {
    
   @State var videos: [Video] = Bundle.main.decode("videos.json")
    
    var body: some View {
        
        NavigationView {
            List(videos) { video in
                NavigationLink(destination: VideoPlayerView(videoSelected: video.id, videoTitle: video.name)) {
                    VideoListItem(video: video)
                        .padding(.vertical, 8)
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Videos")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        videos.shuffle()
                    } label: {
                        Image(systemName: "arrow.2.squarepath")
                    }

                }
            }
        }
    }
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
