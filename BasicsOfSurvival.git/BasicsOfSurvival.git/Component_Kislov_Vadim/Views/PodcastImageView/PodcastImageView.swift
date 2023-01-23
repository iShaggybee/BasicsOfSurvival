//
//  PodcastImageView.swift
//  BasicsOfSurvival.git
//
//  Created by Kislov Vadim on 22.01.2023.
//

import UIKit

class PodcastImageView: UIImageView {
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.contentMode = .scaleAspectFill
        self.backgroundColor = .white
        self.clipsToBounds = true
        self.layer.cornerRadius = 7
    }
    
    public func setImage(from urlString: String) {
        guard let url = URL(string: urlString) else {
            self.image = UIImage(named: "image-not-found")
            
            return
        }
        
        if let cachedImage = getCachedImage(from: url) {
            self.image = cachedImage
            
            return
        }
        
        ImageManager.shared.fetchImage(from: url) { result in
            switch result {
            case .success(let (data, response)):
                self.image = UIImage(data: data)
                self.saveImageToCache(with: data, and: response)
            case .failure:
                self.image = UIImage(named: "image-not-found")
            }
        }
    }
    
    private func saveImageToCache(with data: Data, and response: URLResponse) {
        guard let url = response.url else { return }
        
        let request = URLRequest(url: url)
        let cachedResponse = CachedURLResponse(response: response, data: data)
        
        URLCache.shared.storeCachedResponse(cachedResponse, for: request)
    }
    
    private func getCachedImage(from url: URL) -> UIImage? {
        let request = URLRequest(url: url)
        
        if let cachedResponse = URLCache.shared.cachedResponse(for: request) {
            return UIImage(data: cachedResponse.data)
        }
        
        return nil
    }
}
