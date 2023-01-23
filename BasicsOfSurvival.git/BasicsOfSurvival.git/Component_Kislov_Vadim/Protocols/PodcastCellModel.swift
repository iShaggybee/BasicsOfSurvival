//
//  PodcastCellModel.swift
//  BasicsOfSurvival.git
//
//  Created by Kislov Vadim on 21.01.2023.
//

protocol PodcastCellModel {
    var title: String { get set }
    var imageUrl: String { get set }
    var duration: Int { get set }
    var url: String { get set }
}
