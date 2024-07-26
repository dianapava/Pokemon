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
                }
                
                PokemonNameView(name: pokemon.name)
                PokemonTypeView(type: viewModel.pokemonType)
                Text(pokemon.description)
                    .foregroundColor(.white.opacity(0.6))
                    .multilineTextAlignment(.center)
                    .padding()
                HStack{
                    CurveShapeLeft()
                        .fill(Color.white.opacity(0.2))
                        .frame(height: 300)
                    CurveShapeLeft()
                        .fill(Color.white.opacity(0.2))
                        .frame(height: 300)
                        .rotationEffect(.degrees(180))
                }
               
                Spacer()
            }
        }
        .ignoresSafeArea()
        .onAppear(perform: {
            viewModel.pokemon = pokemon
            viewModel.viewDidLoad()
            
        })
    }
}

#Preview {
    PokemonDetailView(pokemon: PokemonModel(description: "", imageUrl: "", name: "", type: ""))
}

struct PokemonBackground: View {
    var body: some View {
        Circle()
            .fill(
                RadialGradient(colors: [Color.yellow.opacity(0.3),
                                        Color.yellow.opacity(0.2),
                                        Color.black.opacity(0.1)],
                               center: .center,
                               startRadius: 0,
                               endRadius: 180)
            )
    }
}

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

struct CurveShapeLeft: Shape {
    var path = Path()
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: .zero)
        path.addCurve(to: CGPoint(x: rect.minX, y: rect.maxY),
                      control1: CGPoint(x: rect.maxX / 4, y: (rect.midY)),
                      control2: CGPoint(x: (rect.midY * 2), y: rect.midY))
        path.closeSubpath()
        return path
    }
}
struct CurveShapeRight: Shape {
    var path = Path()
    func path(in rect: CGRect) -> Path {
        print(rect)
        var path = Path()
        path.move(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addCurve(to: CGPoint(x: rect.maxX, y: rect.maxY),
                      control1: CGPoint(x: rect.maxX, y: rect.midY),
                      control2: CGPoint(x: rect.midY * (-1), y: rect.midY))
        path.closeSubpath()
        return path
    }
}

struct VerticalCurve: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let startX = rect.maxX
        let startY = rect.midY
        let endY = rect.maxY
        
        path.move(to: CGPoint(x: startX, y: startY))
        path.addCurve(
            to: CGPoint(x: startX, y: endY),
            control1: CGPoint(x: startX - rect.width / 2, y: startY + (endY - startY) / 3),
            control2: CGPoint(x: startX - rect.width / 1.5, y: endY)
        )
        
        return path
    }
}


struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.midX, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        }
    }
}


