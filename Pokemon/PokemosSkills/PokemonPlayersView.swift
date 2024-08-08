//
//  PokemonPlayersView.swift
//  Pokemon
//
//  Created by Diana Pava Avila on 6/08/24.
//

import SwiftUI

struct PokemonPlayersView: View {
    var body: some View {
        VStack{
            HStack{
                PlayerOne()
                Spacer()
                PlayerTwo()
            }
        }
        .padding()
    }
}

struct PlayerOne: View {
    var body: some View {
        VStack{
            HStack{
                ImagePlayer()
                Text("Player 1")
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor(.orange)
            }
            .padding(.bottom, -10)
            HStack{
                ForEach(0...7, id: \.self) { value in
                    LifeCounterGrid()
                }
            }
            
        }
        
    }
}

struct PlayerTwo: View {
    var body: some View {
        VStack{
            HStack{
                Text("Player 1")
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor(.orange)
                ImagePlayer()
            }
            .padding(.bottom, -10)
            HStack{
                ForEach(0...7, id: \.self) { value in
                    LifeCounterGrid()
                        .rotationEffect(.degrees(-30))
                }
            }
        }
        
    }
}

struct LifeCounterGrid: View {
    var body: some View {
        ZStack {
            VStack {
            }
            .padding()
            .background(Color.cyan)
            .frame(width: 10, height: 30)
            .cornerRadius(50)
            .shadow(radius: 8)
            .rotationEffect(.degrees(15))
        }
    }
}

struct ImagePlayer: View {
    var body: some View {
        Image(systemName: "figure.badminton")
            .foregroundColor(.orange)
            .shadow(radius: 3)
            .font(.system(size: 20))
            .frame(width: 40, height: 65)
            .overlay( Circle().stroke(Color.orange, lineWidth: 3))
    }
}

#Preview {
    PokemonPlayersView()
}
