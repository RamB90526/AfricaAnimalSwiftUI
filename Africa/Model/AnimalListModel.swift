//
//  File.swift
//  Africa
//
//  Created by ran mohan on 06/10/23.
//

import SwiftUI

struct AnilmalListModel: Codable,Identifiable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}
