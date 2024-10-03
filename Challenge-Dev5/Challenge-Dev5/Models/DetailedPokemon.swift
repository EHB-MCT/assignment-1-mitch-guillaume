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
    let height: Int
    
    let abilities: [Ability]
    let moves: [Move]
    
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
    
    var abilityNames: [String] {
        abilities.map { $0.ability.name }
    }
    
    var moveNames: [String] {
        moves.map { $0.move.name }
    }
}
