//
//  ContentView.swift
//  Challenge
//
//  Created by Guillaume Dochy on 26/09/2024.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model: ObjectViewModel
    
    var body: some View {
        NavigationView{
            VStack{
                if model.object.isEmpty {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle())
                    Text("Loading...")
                } else {
                    List(model.object) {
                        object in
                        NavigationLink(destination: ObjectDetailView(pokemonURL: object.url), label: {
                            Text(object.name)
                        })
                    }
                }
            }
            
            .navigationTitle("Pokemon List")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView(model: ObjectViewModel())
}
