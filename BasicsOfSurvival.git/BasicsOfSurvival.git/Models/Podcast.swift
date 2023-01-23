//
//  Podcast.swift
//  BasicsOfSurvival.git
//
//  Created by Kislov Vadim on 21.01.2023.
//

import Foundation

struct Podcast: PodcastCellModel {
    var title: String
    var imageUrl: String
    var duration: Int
    var url: String
    
    static func getPodcastItems() -> [Podcast] {
        return [
            Podcast(
                title: "The Big Beard Theory",
                imageUrl:"https://img.freepik.com/premium-photo/glowing-planet-deep-space-image-science-fiction-fantasy-in-high-resolution-ideal-for-wallpaper-and-print-elements-of-this-image-furnished-by-nasa_112293-573.jpg?w=1380",
                duration: 8974,
                url: ""
            ),
            Podcast(
                title: "История фантастики и альтернативной техники",
                imageUrl: "https://img.freepik.com/premium-photo/dead-of-international-space-station_112293-983.jpg",
                duration: 45,
                url: ""
            ),
            Podcast(
                title: "Лекции Arzamas",
                imageUrl: "https://img.freepik.com/premium-photo/deep-space-science-fiction-wallpaper-planets-stars-galaxies-and-nebulas-in-awesome-cosmic-image-elements-of-this-image-furnished-by-nasa_112293-813.jpg",
                duration: 3452,
                url: ""),
            Podcast(
                title: "Просто Космос",
                imageUrl: "https://img.freepik.com/free-vector/realistic-neon-lights-background_52683-60420.jpg?t=st=1674402026~exp=1674402626~hmac=e791057a14c974fd70e15aa1f573af254a6fa41d6997667b8fe6bc735d8211d6",
                duration: 7200,
                url: ""
            ),
            Podcast(
                title: "Обретённые Миры",
                imageUrl: "https://img.freepik.com/premium-photo/deep-space-beauty-of-endless-cosmos-science-fiction-wallpaper-elements-of-this-image-furnished-by-nasa_112293-734.jpg",
                duration: 4645,
                url: ""
            ),
            Podcast(
                title: "ForGeeks",
                imageUrl: "https://img.freepik.com/premium-photo/earth-planet-from-the-spaceship-porthole-science-fiction-art_112293-3.jpg",
                duration: 1232,
                url: ""
            ),
            Podcast(
                title: "Наука, космос, хайтек",
                imageUrl: "https://img.freepik.com/premium-photo/earth-at-night-city-lights-from-orbit-elements-of-this-image-furnished-by-nasa_112293-533.jpg",
                duration: 4554,
                url: ""
            ),
            Podcast(
                title: "Космос",
                imageUrl: "https://img.freepik.com/free-vector/flat-vivid-modern-background_23-2148889926.jpg",
                duration: 1332,
                url: ""
            )
        ]
    }
}
