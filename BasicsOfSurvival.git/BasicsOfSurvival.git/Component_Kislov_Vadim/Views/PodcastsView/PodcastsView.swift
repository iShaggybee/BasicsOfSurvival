//
//  PodcastsView.swift
//  BasicsOfSurvival.git
//
//  Created by Kislov Vadim on 22.01.2023.
//

import UIKit

class PodcastsView: UIView {
    @IBOutlet var contentView: UIView!
    @IBOutlet var podcastsCollectionView: PodcastsCollectionView!
    
    public var delegate: PodcastsViewDelegate!
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        setupContentView()
    }
    
    override func awakeFromNib() {
        podcastsCollectionView.delegate = self
        podcastsCollectionView.dataSource = self
    }
    
    @IBAction func showAllPodcastsAction(_ sender: Any) {
        delegate.showAllPodcasts()
    }
    
    private func setupContentView() {
        Bundle.main.loadNibNamed(String(describing: PodcastsView.self), owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
}

extension PodcastsView: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)

        UIView.animate(withDuration: 0.2, animations: { cell?.alpha = 0.5 }) { _ in
            UIView.animate(withDuration: 0.2, animations: { cell?.alpha = 1 })
            
            self.delegate.openPodcastUrl(for: indexPath.item)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        delegate.getPodcastsCount()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: PodcastCollectionViewCell.getReuseIdentifier(),
            for: indexPath
        ) as! PodcastCollectionViewCell
        
        let podcast = delegate.getPodcast(for: indexPath.item)
        
        cell.configure(podcast: podcast)

        return cell
    }
}
