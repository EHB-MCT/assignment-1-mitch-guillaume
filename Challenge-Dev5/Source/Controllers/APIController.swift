//
//  APIController.swift
//
//  Handled all API calls.
//
//  Created by Guillaume Dochy on 26/09/2024.
//

import Foundation

enum HTTPError: Error {
    case badResponse
}

final class APIController {
//    Fetches the first 151 Pokémon from the PokéAPI.
//  
//    - Throws:
//      - `HTTPError.badResponse` if the HTTP response is not valid.
//      - Any decoding error that occurs during the JSON parsing process.
//    - Returns:
//      An array of `Pokemon` objects representing the first 151 Pokémon.
    
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
    
//    Fetches detailed information about a Pokémon from the provided URL.
//
//     - Parameters:
//        - url: The URL from which to fetch the detailed Pokémon information.
//
//     - Returns:
//        A `DetailedPokemon` object containing the parsed data from the API.
//
//     - Throws:
//        - `HTTPError.badResponse`: If the HTTP response status code is not 200, indicating a failed request.
//        - Any error thrown by `URLSession` or `JSONDecoder` during data retrieval or decoding.
    
    func detailedPokemon(from url: URL) async throws -> DetailedPokemon {
            let (data, response) = try await URLSession.shared.data(from: url)
            
            guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
                throw HTTPError.badResponse
            }
            
            let decodedPokemon = try JSONDecoder().decode(DetailedPokemon.self, from: data)
            return decodedPokemon
        }
}
