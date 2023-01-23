//
//  PodcastCollectionViewDelegate.swift
//  BasicsOfSurvival.git
//
//  Created by Kislov Vadim on 21.01.2023.
//

protocol PodcastsViewDelegate {
    // Открытие ссылки на соответствующий подкаст ВК
    func openPodcastUrl(for item: Int)
    
    // Раскрытие списка всех доступных подкастов
    func showAllPodcasts()
    
    // Получить количество подкастов
    func getPodcastsCount() -> Int
    
    // Получить подкаст из массива подкастов
    func getPodcast(for item: Int) -> PodcastCellModel
}
