//
//  DetailedPokemon.swift
//
//
//
//  Created by Guillaume Dochy on 27/09/2024.
//

import Foundation

// A model representing detailed information about a Pokémon.
// 
// - Properties:
//    - `id`: A unique identifier for each Pokémon, generated using `UUID`.
//    - `name`: The name of the Pokémon.
//    - `height`: The height of the Pokémon in decimetres.
//    - `abilities`: An array of `Ability` structs representing the abilities of the Pokémon.
//    - `moves`: An array of `Move` structs representing the available moves for the Pokémon.
//    - `types`: An array of `PokeType` structs representing the types of the Pokémon (e.g., Fire, Water).
//    - `abilityNames`: A computed property that returns an array of ability names.
//    - `moveNames`: A computed property that returns an array of move names.
//    - `typeNames`: A computed property that returns an array of type names.

struct DetailedPokemon: Codable, Identifiable {
    
    // MARK: - Properties
    
    var id: String { UUID().uuidString }
    let name: String
    let height: Int
    let abilities: [Ability]
    let moves: [Move]
    let types: [PokeType]
    
    // MARK: - Nested Models
    
    struct Ability: Codable {
        let ability: AbilityInfo
        
        struct AbilityInfo: Codable {
            let name: String
        }
    }
    
    struct Move: Codable {
        let move: MoveInfo
        
        struct MoveInfo: Codable {
            let name: String
        }
    }
    
    struct PokeType: Codable {
        let type: TypeInfo
        
        struct TypeInfo: Codable {
            let name: String
        }
    }
    
    // MARK: - Computed Properties
    
    var abilityNames: [String] {
        abilities.map { $0.ability.name }
    }
    
    var moveNames: [String] {
        moves.map { $0.move.name }
    }
    
    var typeNames: [String] {
        types.map{ $0.type.name}
    }
}
