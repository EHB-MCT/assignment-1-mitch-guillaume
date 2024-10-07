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
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            if viewModel.isLoading {
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle())
                    .scaleEffect(1.5)
                Text("Fetching Pokémon Details...")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            } else if let detailedPokemon = viewModel.detailedPokemon {
                ScrollView {
                    VStack(alignment: .leading, spacing: 20) {
                        
                        Text(detailedPokemon.name.capitalized)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.blue)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .padding(.top, 20)

                        Divider()
                        
                        HStack {
                            Text("Height:")
                                .font(.headline)
                                .foregroundColor(.secondary)
                            Spacer()
                            Text("\(detailedPokemon.height)")
                                .font(.title2)
                                .fontWeight(.semibold)
                        }
                        .padding(.horizontal)
                        
                        Divider()
                        
                        VStack(alignment: .leading) {
                            Text("Types")
                                .font(.headline)
                                .padding(.bottom, 5)
                                .foregroundColor(.secondary)
                            
                            ForEach(detailedPokemon.typeNames, id: \.self) { ability in
                                Text(ability.capitalized)
                                    .font(.body)
                                    .padding(.vertical, 5)
                                    .padding(.horizontal)
                                    .background(Color.red.opacity(0.1))
                                    .cornerRadius(8)
                                    .padding(.horizontal)
                            }
                        }
                        
                        Divider()

                        VStack(alignment: .leading) {
                            Text("Abilities")
                                .font(.headline)
                                .padding(.bottom, 5)
                                .foregroundColor(.secondary)
                            
                            ForEach(detailedPokemon.abilityNames, id: \.self) { ability in
                                Text(ability.capitalized)
                                    .font(.body)
                                    .padding(.vertical, 5)
                                    .padding(.horizontal)
                                    .background(Color.blue.opacity(0.1))
                                    .cornerRadius(8)
                                    .padding(.horizontal)
                            }
                        }
                        
                        Divider()
                        
                        VStack(alignment: .leading) {
                            Text("Moves")
                                .font(.headline)
                                .padding(.bottom, 5)
                                .foregroundColor(.secondary)

                            ScrollView {
                                LazyVStack(alignment: .leading) {
                                    ForEach(detailedPokemon.moveNames, id: \.self) { move in
                                        Text(move.capitalized)
                                            .font(.body)
                                            .padding(.vertical, 5)
                                            .padding(.horizontal)
                                            .background(Color.green.opacity(0.1))
                                            .cornerRadius(8)
                                            .padding(.horizontal)
                                    }
                                }
                            }
                            .frame(height: 300)
                        }
                        
                    }
                    .padding()
                }
            } else if let errorMessage = viewModel.errorMessage {
                Text(errorMessage)
                    .foregroundColor(.red)
                    .font(.title3)
                    .padding()
            } else {
                Text("No data available")
                    .font(.title3)
                    .padding()
            }
        }
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
