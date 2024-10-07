//
//  Challenge_Dev5App.swift
//  Challenge-Dev5
//
//  Created by Guillaume Dochy on 03/10/2024.
//

import SwiftUI

@main
struct Challenge_Dev5App: App {
    @StateObject var model = ObjectViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView(model: model)
        }
    }
}
