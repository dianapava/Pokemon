//
//  PokemonBackground.swift
//  Pokemon
//
//  Created by Diana Pava Avila on 26/07/24.
//

import SwiftUI

struct PokemonBackground: View {
    var body: some View {
        Circle()
            .fill(
                RadialGradient(colors: 
                                [Color.yellow.opacity(0.3),
                                 Color.yellow.opacity(0.2),
                                 Color.black.opacity(0.1)],
                               center: .center,
                               startRadius: 0,
                               endRadius: 180)
            )
    }
}

#Preview {
    PokemonBackground()
}
