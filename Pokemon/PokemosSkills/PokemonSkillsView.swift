//
//  PokemonSkillsView.swift
//  Pokemon
//
//  Created by Diana Pava Avila on 6/08/24.
//

import SwiftUI

struct PokemonSkillsView: View {
    var body: some View {
        ZStack{
            Color.black
            VStack{
                HStack(spacing: 100){
                    PokemonBackgroundBlue()
                        .padding(.leading, -170)
                    PokemonBackground()
                        .padding(.trailing, -170)
                }
                PokemonPlayersView()
                SeparatorLineView()
                Text("Choose Your Attack")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.white.opacity(0.5))
                    .padding()
                PokemonAttackGrid()
            }
            .padding()
            .safeAreaPadding(.top, 50)
        }
        .ignoresSafeArea()
    }
}

struct SeparatorLineView: View {
    var body: some View {
        Color.white
            .frame(width: 400, height: 2.5)
            .shadow(radius: 20)
            .opacity(0.2)
    }
}

#Preview {
    PokemonSkillsView()
}
