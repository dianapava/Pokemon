//
//  PokemonNameView.swift
//  Pokemon
//
//  Created by Diana Pava Avila on 26/07/24.
//

import SwiftUI

struct PokemonNameView: View {
    let name: String
    var body: some View {
        ZStack {
            Text(name)
                .font(.system(size: 80, weight: .bold))
                .foregroundColor(.white.opacity(0.06))
                .frame(width: .infinity, height: 50)
            Text(name)
                .foregroundColor(.white)
                .font(.system(size: 40, weight: .bold))
        }
    
    }
}

