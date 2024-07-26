//
//  PokemonListRepository.swift
//  Pokemon
//
//  Created by Diana Pava Avila on 17/07/24.
//

import Foundation

class PokemonListRepository {
    let apiClient: ApiClientProtocol
    
    init(apiClient: ApiClientProtocol) {
        self.apiClient = apiClient
    }
    
    func getPokemonList(onSuccess:  @escaping ([PokemonModel]) -> (), onFailure:  @escaping (Error) -> ()) {
        let endpoint = PokemonListEndpoint()
        apiClient.request(endpoint: endpoint) { model in
            onSuccess(model)
        } onFailure: { error in
            onFailure(error)
        }
    }
}
