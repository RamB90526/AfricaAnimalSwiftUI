//
//  CoverImageModel.swift
//  Africa
//
//  Created by ran mohan on 04/10/23.
//

import SwiftUI

struct CoverImagesModel: Codable, Identifiable {
    let id: Int
    let name: String
}

typealias CoverImagesArray = [CoverImagesModel]
