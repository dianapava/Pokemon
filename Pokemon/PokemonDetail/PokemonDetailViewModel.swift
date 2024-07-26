//
//  PokemonDetailViewModel.swift
//  Pokemon
//
//  Created by Diana Pava Avila on 18/07/24.
//

import UIKit

class PokemonDetailViewModel: ObservableObject {
    
    @Published var imageDetail: UIImage = UIImage()
    @Published var pokemonType: PokemonType = .none
    var pokemon: PokemonModel?
    
    func viewDidLoad() {
        getImage(url: pokemon?.imageUrl)
        print(pokemon?.type)
        if let type = pokemon?.type {
            pokemonType = PokemonType(rawValue: type) ?? .none
        }
    }
    
    private func getImage(url: String?) {
        guard let urlStr = url,
              let url = URL(string: urlStr) else {return }
        let urlRequest = URLRequest(url: url)
        URLSession.shared.dataTask(with: urlRequest) { [weak self] data, _, _ in
            if let data = data {
                DispatchQueue.main.async {
                    self?.imageDetail = UIImage(data: data) ?? UIImage(type: .fire)
                }
            }
        }.resume()
    }
    
}
