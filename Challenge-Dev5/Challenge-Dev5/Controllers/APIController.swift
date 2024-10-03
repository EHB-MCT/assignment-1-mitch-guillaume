//
//  APIController.swift
//  Challenge
//
//  Created by Guillaume Dochy on 26/09/2024.
//

import Foundation

enum HTTPError: Error {
    case badResponse
}

final class APIController {
    func pokemon() async throws -> [Pokemon] {
        let url = URL(string: "https://pokeapi.co/api/v2/pokemon?limit=151")!
        
        let (data, response) = try await URLSession.shared.data(from: url)
                
        guard let httpResponse = response as? HTTPURLResponse else {
            throw HTTPError.badResponse
        }
        
        switch httpResponse.statusCode {
        case 200...299:
            do {
                let decodedResponse = try JSONDecoder().decode(ObjectResponse.self, from: data)
                return decodedResponse.results
            } catch {
                throw error
            }
            
        default:
            throw HTTPError.badResponse
        }
    }
    func detailedPokemon() {
    
    }
}
