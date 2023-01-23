//
//  PodcastCollectionViewCell.swift
//  BasicsOfSurvival.git
//
//  Created by Kislov Vadim on 21.01.2023.
//

import UIKit

class PodcastCollectionViewCell: UICollectionViewCell {
    @IBOutlet var podcastImageView: PodcastImageView!
    @IBOutlet var podcastTitleLable: UILabel!
    @IBOutlet var podcastDurationLabel: UILabel!
    
    public func configure(podcast: PodcastCellModel) {
        podcastTitleLable.text = podcast.title
        podcastDurationLabel.text = transformDuration(from: podcast.duration)

        podcastImageView.setImage(from: podcast.imageUrl)
    }

    private func transformDuration(from seconds: Int) -> String {
        if (seconds < 60) {
            return "\(seconds)с"
        }
        
        let hours = seconds / 3600
        
        if hours == 0 {
            let minutes = seconds / 60
            let seconds = seconds % 60
            
            return seconds == 0 ? "\(minutes)м" : "\(minutes)м \(seconds)с"
        } else {
            let minutes = (seconds - hours * 3600) / 60
            
            return minutes == 0 ? "\(hours)ч" : "\(hours)ч \(minutes)м"
        }
    }
}

extension PodcastCollectionViewCell {
    static func getReuseIdentifier() -> String {
        String(describing: self)
    }
}

