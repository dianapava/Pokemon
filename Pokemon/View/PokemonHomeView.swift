//
//  PokemonHomeView.swift
//  Pokemon
//
//  Created by Diana Pava Avila on 17/07/24.
//

import SwiftUI

struct PokemonHomeView: View {
    
    @ObservedObject var viewModel = PokemonListViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                Text("POKEMON")
                    .font(.system(size: 30))
                    .bold()
                    .foregroundColor(.blue)
                    .safeAreaPadding()
                List(viewModel.pokemonList, id: \.name) { pokemon in
                    NavigationLink {
                        PokemonDetailView(pokemon: pokemon)
                    } label: {
                        PokemonCell(name: pokemon.name)
                    }
                    
                }.onAppear(perform: {
                    viewModel.viewDidload()
                })
            }
            
        } 
        .background(Color.black)
        .ignoresSafeArea(.all)
    }
}

#Preview {
    PokemonHomeView()
}



