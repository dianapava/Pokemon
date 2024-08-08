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
                                [Color.orange.opacity(0.3),
                                 Color.orange.opacity(0.2),
                                 Color.black.opacity(0.1)],
                               center: .center,
                               startRadius: 0,
                               endRadius: 180)
            )
    }
}

struct PokemonBackgroundBlue: View {
    var body: some View {
        Circle()
            .fill(
                RadialGradient(colors:
                                [Color.white.opacity(0.3),
                                 Color.blue.opacity(0.2),
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
