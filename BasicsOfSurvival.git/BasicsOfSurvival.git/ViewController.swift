//
//  ViewController.swift
//  BasicsOfSurvival.git
//
//  Created by Sergei Vikhliaev on 20.01.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var podcastsView: PodcastsView!
    
    private let podcasts = Podcast.getPodcastItems()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        podcastsView.delegate = self
    }
}

extension ViewController: PodcastsViewDelegate {
    func openPodcastUrl(for item: Int) {
        //    let _ = podcasts[item]
    }
    
    func showAllPodcasts() {
        //
    }
    
    func getPodcastsCount() -> Int {
        podcasts.count
    }
    
    func getPodcast(for item: Int) -> PodcastCellModel {
        podcasts[item]
    }
}
