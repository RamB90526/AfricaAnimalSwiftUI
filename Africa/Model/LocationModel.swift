//
//  LocationModel.swift
//  Africa
//
//  Created by ran mohan on 10/10/23.
//

import Foundation
import MapKit
struct NationalParkLocationModel: Codable, Identifiable {
    var id: String
    var name: String
    var image: String
    var latitude: Double
    var longitude: Double
    
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
}
