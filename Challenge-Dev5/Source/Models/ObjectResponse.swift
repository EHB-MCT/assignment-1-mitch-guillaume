//
//  ObjectListingsResponse.swift
//  
//
//  Created by Guillaume Dochy on 26/09/2024.
//

import Foundation

// A model representing a response from the Pokémon API containing a list of Pokémon.
//
// - Properties:
//   - `id`: A unique identifier for each response, generated using `UUID`.
//   - `results`: An array of `Pokemon` objects, representing the list of Pokémon returned from the API.

struct ObjectResponse: Codable, Identifiable {
    var id: String { UUID().uuidString }
    let results: [Pokemon]
    
}
