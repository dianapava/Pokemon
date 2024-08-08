//
//  PokemonSwipe.swift
//  Pokemon
//
//  Created by Diana Pava Avila on 26/07/24.
//

import SwiftUI

struct PokemonSwipe: View {
    
    var body: some View {
        NavigationLink(destination: PokemonSkillsView()) {
            VStack {
                Spacer()
                Image(systemName: "chevron.up")
                    .font(.system(size: 22, weight: .bold))
                    .foregroundColor(.black)
                Image(systemName: "chevron.up")
                    .font(.system(size: 22, weight: .bold))
                    .foregroundColor(.black)
                    .opacity(0.5)
                Image(systemName: "chevron.up")
                    .font(.system(size: 22, weight: .bold))
                    .foregroundColor(.black)
                    .opacity(0.2)
                Image(uiImage: .pokebola)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .shadow(radius: 20)
                Spacer()
            }
            .padding(10)
            .background(Color.white.opacity(0.8))
            .frame(width: 70, height: 140)
            .cornerRadius(70)
            .shadow(radius: 8)
        }
        
    }
}

#Preview {
    PokemonSwipe()
}
