//
//  ObjectViewModel.swift
//
//
//  Created by Guillaume Dochy on 26/09/2024.
//

import Combine
import Foundation

// The `ObjectViewModel` class is an implementation of the `ObservableObject` protocol,
// responsible for fetching and storing a collection of Pokémon objects. It initializes
// the fetching process as soon as an instance is created.

final class ObjectViewModel: ObservableObject {
    
    @Published var object: [Pokemon] = []
    
    init() {
        Task{
                await fetchObjects()
        }
    }
    
    //MARK: - Private
    
    private let controller = APIController()
    
    @MainActor func fetchObjects() async  {
        do {
            object = try await controller.pokemon()
        }catch {
            print(error.localizedDescription)
        }
    }
}
