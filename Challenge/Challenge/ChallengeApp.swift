//
//  ChallengeApp.swift
//  Challenge
//
//  Created by Guillaume Dochy on 26/09/2024.
//

import SwiftUI

@main
struct ChallengeApp: App {
    
    @StateObject var model = ObjectViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView(model: model)
        }
    }
}
