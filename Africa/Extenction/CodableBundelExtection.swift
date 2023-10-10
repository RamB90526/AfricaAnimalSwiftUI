//
//  CodableBundelExtection.swift
//  Africa
//
//  Created by ran mohan on 04/10/23.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("fail to load file \(file) in Bundel")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("fail to load data")
        }

        guard let result = try? JSONDecoder().decode(T.self, from: data) else {
            fatalError("fail to decode images data")
        }
       
        return result
    }
}
