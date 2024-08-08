//
//  PokemonDetailView.swift
//  Pokemon
//
//  Created by Diana Pava Avila on 17/07/24.
//

import SwiftUI

struct PokemonDetailView: View {
    
    let pokemon: PokemonModel
    
    @ObservedObject var viewModel = PokemonDetailViewModel()

    var body: some View {
        ScrollView{
            ZStack {
                Color.black
                VStack {
                    Spacer()
                    ZStack {
                        PokemonBackground()
                        Image(uiImage: viewModel.imageDetail)
                            .resizable()
                            .frame(width: 250,height: 250)
                            .transition(.opacity)
                            .padding(.top, 20)
                    }
                    PokemonNameView(name: pokemon.name)
                    PokemonTypeView(type: viewModel.pokemonType)
                    Text(pokemon.description)
                        .foregroundColor(.white.opacity(0.6))
                        .multilineTextAlignment(.center)
                        .padding()
                    ZStack {
                        HStack{
                            CurveShapeLeft()
                                .fill(Color.white.opacity(0.2))
                                .frame(height: 300)
                            CurveShapeLeft()
                                .fill(Color.white.opacity(0.2))
                                .frame(height: 300)
                                .rotationEffect(.degrees(180))
                        }
                        VStack(spacing: 20){
                            Text("Viewsfsdfsd")
                                .font(.system(size: 18, weight: .bold))
                                .foregroundColor(.yellow.opacity(0.5))
                                .shadow(color: Color.yellow, radius: 10)
                            PokemonSwipe()
                            Text("swipe uo to select")
                                .font(.system(size: 15, weight: .bold))
                                .foregroundColor(.white.opacity(0.5))

                        }
                    }
                    
                }
            }
            .onAppear(perform: {
                viewModel.pokemon = pokemon
                viewModel.viewDidLoad()
                
            })
        }
        //.ignoresSafeArea(.all)
        .background(Color.black)
    }
}

#Preview {
    PokemonDetailView(pokemon: PokemonModel(description: "", imageUrl: "", name: "", type: ""))
}
