//
//  APIManager.swift
//  ShowCreditScore
//
//  Created by Mani Yechuri on 2023/08/27.
//

import Foundation
import Combine

class APIManager {
    
    private var subscriber = Set<AnyCancellable>()
    
    func fetchData<T: Decodable>(urlString : String, completion : @escaping (Result<T, DataError>) -> Void) {
        guard let url = URL(string: urlString) else {
            completion(.failure(.invalidURL))
            return
        }
        URLSession.shared.dataTaskPublisher(for: url)
            .map(\.data)
            .decode(type: T.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { (completionResult) in
                switch completionResult {
                case .failure(let error):
                    print("Error at completion : \(error.localizedDescription)")
                case .finished:
                    return
                }
            }, receiveValue: { creditScore in
                completion(.success(creditScore))
            })
            .store(in: &subscriber)
    }
}
