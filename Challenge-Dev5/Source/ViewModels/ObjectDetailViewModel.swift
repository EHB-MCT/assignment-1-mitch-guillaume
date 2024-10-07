//
//  ObjectDetailViewModel.swift
//  Challenge-Dev5
//
//  Created by Guillaume Dochy on 03/10/2024.
//

import Foundation
import Combine

final class ObjectDetailViewModel: ObservableObject {
    
    @Published var detailedPokemon: DetailedPokemon?
    @Published var isLoading = true
    @Published var errorMessage: String?
    
    private let apiController = APIController()
    
    @MainActor
    func fetchPokemonDetails(from url: URL) async {
        do {
            let details = try await apiController.detailedPokemon(from: url)
            detailedPokemon = details
            isLoading = false
        } catch {
            errorMessage = "Failed to load Pokémon details"
            isLoading = false
        }
    }
}
