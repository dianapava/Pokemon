//
//  PokemonImage.swift
//  Pokemon
//
//  Created by Diana Pava Avila on 17/07/24.
//

import UIKit

enum PokemonImageType : String {
    case charizard
    case fire
}

extension UIImage {
    convenience init(type: PokemonImageType) {
        self.init(named: type.rawValue)!
    }
}


enum PokemonType: String {
    case poison
    case fire
    case none
    
    var titleColor: UIColor {
        switch self {
        case .poison:
            return .green
        case .fire:
            return .red
        case .none:
            return .clear
        }
    }
    
    var color: UIColor {
        switch self {
        case .poison:
            return .green.withAlphaComponent(0.5)
        case .fire:
            return .red.withAlphaComponent(0.5)
        case .none:
            return .clear
        }
    }
    
    var image: UIImage {
        switch self {
        case .poison:
            return UIImage(type: .charizard)
        case .fire:
            return UIImage(type: .fire)
        case .none:
            return UIImage()
        }
    }
}
