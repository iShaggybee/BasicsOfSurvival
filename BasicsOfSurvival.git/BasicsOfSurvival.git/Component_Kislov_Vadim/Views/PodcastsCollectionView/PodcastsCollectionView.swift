//
//  PodcastsCollectionView.swift
//  BasicsOfSurvival.git
//
//  Created by Kislov Vadim on 21.01.2023.
//

import UIKit

class PodcastsCollectionView: UICollectionView {
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let layout = UICollectionViewFlowLayout()
        
        layout.scrollDirection = .horizontal
        layout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        
        self.collectionViewLayout = layout
        self.clipsToBounds = true
        self.showsHorizontalScrollIndicator = false
        
        self.register(
            UINib(nibName: PodcastCollectionViewCell.getReuseIdentifier(), bundle: nil),
            forCellWithReuseIdentifier: PodcastCollectionViewCell.getReuseIdentifier()
        )
    }
}


