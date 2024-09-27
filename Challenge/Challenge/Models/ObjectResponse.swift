//
//  ObjectListingsResponse.swift
//  Challenge
//
//  Created by Guillaume Dochy on 26/09/2024.
//

import Foundation

struct ObjectResponse: Codable, Identifiable {
    var id: String { UUID().uuidString }
    let results: [Pokemon]
    
}
