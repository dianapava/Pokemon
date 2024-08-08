//
//  PokemonAttackGrid.swift
//  Pokemon
//
//  Created by Diana Pava Avila on 8/08/24.
//

import SwiftUI

struct PokemonAttackGrid: View {
    
    let gridItem = [
        GridItem(.fixed(175)),
        GridItem(.fixed(175))
    ]
    var body: some View {
        LazyVGrid(columns: gridItem, spacing: 20) {
            ForEach(0..<4){ item in
                VStack{
                    Image(uiImage: .fire)
                        .frame(width: 165, height: 100)
                    Text("Attack \(item + 1)")
                        .font(.system(size: 15, weight: .bold))
                        .foregroundColor(.white.opacity(0.8))
                        .padding(.bottom)
                        
                }
                .background(Color.white.opacity(0.2))
                .cornerRadius(10)
            }
        }
    }
}

#Preview {
    PokemonAttackGrid()
}
