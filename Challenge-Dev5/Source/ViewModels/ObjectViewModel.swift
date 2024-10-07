//
//  ObjectViewModel.swift
//  Challenge
//
//  Created by Guillaume Dochy on 26/09/2024.
//

import Combine
import Foundation

final class ObjectViewModel: ObservableObject {
    
    @Published var object: [Pokemon] = []
    
    init() {
        Task{
                await fetchObjects()
        }
    }
    
    
    // MARK: Private
    
    private let controller = APIController()
    
    @MainActor func fetchObjects() async  {
        do {
            object = try await controller.pokemon()
        }catch {
            print(error.localizedDescription)
        }
    }
}
