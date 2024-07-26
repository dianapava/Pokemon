//
//  PokemonListViewModel.swift
//  Pokemon
//
//  Created by Diana Pava Avila on 17/07/24.
//

import Foundation

class PokemonListViewModel: ObservableObject {
    //MARK: public properties
    @Published var pokemonList: [PokemonModel] = []
    
    //MARK: private properties
    private lazy var respository : PokemonListRepository = {
        let apiClient = ApiClient()
        return PokemonListRepository(apiClient: apiClient)
    }()
     
    func viewDidload() {
        getPokemonList()
    }
    
    private func getPokemonList() {
        respository.getPokemonList { [weak self] pokemonList in
            DispatchQueue.main.async {
                self?.pokemonList = pokemonList
            }
        } onFailure: { error in
            
        }
    }
}
