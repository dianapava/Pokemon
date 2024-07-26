//
//  Repository.swift
//  Pokemon
//
//  Created by Diana Pava Avila on 17/07/24.
//

import Foundation

enum ApiClientError: Error {
    case notFoundURL
}

protocol ApiClientProtocol {
    func request<T: Codable>(endpoint: Endpoint, onSuccess: @escaping (T) -> (), onFailure: @escaping (Error) -> ())
}

struct EndpointValue {
    
}

class ApiClient : ApiClientProtocol {
    
    func request<T>(url: String, method: String, params: [String:String], headers: [String:String], encode: T) {
        
    }
    
    func request<T>(url: String, method: String,  headers: [String:String], encode: T) {
        
    }
    
    func request<T: Codable>(endpoint: any Endpoint, onSuccess: @escaping (T) -> (), onFailure: @escaping (any Error) -> ()) {
        guard let url = URL(string: endpoint.url) else {
            onFailure(ApiClientError.notFoundURL)
            return
        }
        
        let urlRequest = URLRequest(url: url)
        URLSession.shared.dataTask(with: urlRequest) { data, _, error in
            
            guard let data = data?.parseData(removeString: "null,")  else {
                onFailure(ApiClientError.notFoundURL)
                return
            }
            
            if let error = error {
                onFailure(error)
            } else {
                do {
                    let model = try JSONDecoder().decode(T.self, from: data)
                    onSuccess(model)
                } catch (let error) {
                    onFailure(error)
                }
            }
        }
        .resume()
    }
}

extension Data {
    func parseData(removeString word: String) -> Data? {
        let dataAsString = String(data: self, encoding: .utf8)
        let parseDataString = dataAsString?.replacingOccurrences(of: word, with: "")
        guard let data = parseDataString?.data(using: .utf8) else { return nil }
        return data
    }
}
