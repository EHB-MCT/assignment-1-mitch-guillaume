//
//  Object.swift
//  Challenge
//
//  Created by Guillaume Dochy on 26/09/2024.
//

import Foundation

// A model representing a Pokémon with its name and associated API URL.
//
// - Properties:
//    - `id`: A unique identifier for each Pokémon, generated using `UUID`.
//    - `name`: The name of the Pokémon.
//    - `url`: The URL associated with the Pokémon, typically pointing to further details in the API.

struct Pokemon: Codable, Identifiable {
    var id: String { UUID().uuidString }
    let name: String
    let url: URL
}
