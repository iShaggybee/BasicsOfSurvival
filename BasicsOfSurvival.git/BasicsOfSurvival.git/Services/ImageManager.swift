//
//  ImageManager.swift
//  BasicsOfSurvival.git
//
//  Created by Kislov Vadim on 22.01.2023.
//

import Foundation

enum NetworkError: Error {
    case badRequest
}

class ImageManager {
    static var shared = ImageManager()
    
    private init() {}
    
    func fetchImage(from url: URL, completion: @escaping(Result<(Data, URLResponse), Error>) -> Void) {
        URLSession.shared.dataTask(with: url) { data, response, _ in
            guard let data = data, let response = response else {
                DispatchQueue.main.async {
                    completion(.failure(NetworkError.badRequest))
                }

                return
            }
            
            DispatchQueue.main.async {
                completion(.success((data, response)))
            }
        }.resume()
    }
}
