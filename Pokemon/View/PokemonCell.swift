//
//  PokemonCell.swift
//  Pokemon
//
//  Created by Diana Pava Avila on 17/07/24.
//

import SwiftUI

struct PokemonCell: View {
    let name: String
    
    var body: some View {
        ZStack {
//            HStack {
//                Color.white
//                    .frame(width: 8)
//                Color.gray
//                    .cornerRadius(10)
//                Color.white
//                    .frame(width: 8)
//            }
            HStack {
                Text(name)
                    .font(.system(size: 22))
                    .bold()
                    .foregroundColor(.black)
                    .padding(.leading, 16)
                Spacer()
            }
            .padding(.top, 10)
            
        }
        .background(Color.clear)
        .cornerRadius(10)
    }
}

#Preview {
    PokemonHomeView()
}

