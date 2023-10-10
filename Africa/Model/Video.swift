//
//  Video.swift
//  Africa
//
//  Created by ran mohan on 09/10/23.
//

import SwiftUI

struct Video : Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    var thumbnail: String {
        return "video-\(id)"
    }
}
