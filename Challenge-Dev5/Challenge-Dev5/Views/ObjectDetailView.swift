//
//  ObjectDetailView.swift
//  Challenge
//
//  Created by Guillaume Dochy on 26/09/2024.
//

import SwiftUI

struct ObjectDetailView: View {
    @StateObject var viewModel = ObjectDetailViewModel()
    let pokemonURL: URL
    
    var body: some View {
        VStack {
                    if viewModel.isLoading {
                        ProgressView()
                            .progressViewStyle(CircularProgressViewStyle())
                        Text("Loading...")
                    } else if let detailedPokemon = viewModel.detailedPokemon {
                        Text(detailedPokemon.name)
                            .font(.title)
                            .padding(.bottom)
                        
                        Text("Height: \(detailedPokemon.height)")
                            .font(.headline)
                        
                        VStack(alignment: .leading) {
                            Text("Abilities:")
                                .font(.headline)
                            ForEach(detailedPokemon.abilityNames, id: \.self) { ability in
                                Text(ability)
                                    .padding(.leading)
                            }
                        }
                        
                        VStack(alignment: .leading) {
                            Text("Moves:")
                                .font(.headline)
                            ScrollView {
                                LazyVStack(alignment: .leading) {
                                    ForEach(detailedPokemon.moveNames, id: \.self) { move in
                                        Text(move)
                                            .padding(.leading)
                                    }
                                }
                            }
                        }
                    } else if let errorMessage = viewModel.errorMessage {
                        Text(errorMessage)
                            .foregroundColor(.red)
                    } else {
                        Text("No data available")
                    }
                }
                .padding()
                .onAppear {
                    Task {
                        await viewModel.fetchPokemonDetails(from: pokemonURL)
                    }
                }
    }
}

#Preview {
    ObjectDetailView(pokemonURL: URL(string: "https://pokeapi.co/api/v2/pokemon/1/")!)
}
