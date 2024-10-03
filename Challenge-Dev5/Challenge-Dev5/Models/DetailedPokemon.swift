//
//  DetailedPokemon.swift
//  Challenge
//
//  Created by Guillaume Dochy on 27/09/2024.
//

import Foundation

struct DetailedPokemon: Codable, Identifiable {
    var id: String { UUID().uuidString }
    let name: String
}
