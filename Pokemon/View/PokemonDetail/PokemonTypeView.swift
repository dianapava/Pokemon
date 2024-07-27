//
//  PokemonTypeView.swift
//  Pokemon
//
//  Created by Diana Pava Avila on 26/07/24.
//

import SwiftUI

struct PokemonTypeView: View {
    
    let type: PokemonType
    
    var body: some View {
        ZStack {
            Color(uiColor: type.color)
                .opacity(0.3)
            HStack (spacing: 8){
                Image(uiImage: type.image)
                    .resizable()
                    .frame(width: 35,height: 35)
                Text(type.rawValue)
                    .foregroundColor(Color(uiColor: type.titleColor))
            }
        }
        .frame(width: 100, height: 40)
        .cornerRadius(20)
        
    }
}
