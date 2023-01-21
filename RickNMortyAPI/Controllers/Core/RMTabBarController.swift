//
//  ViewController.swift
//  RickNMortyAPI
//
//  Created by Тимур on 20.01.2023.
//

import UIKit

final class RMTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTabs()
    }
    private func setUpTabs() {
        let charactersVC = RMCharacterViewController()
        let locationsVC = RMLocationViewController()
        let episodesVC = RMEpisodeViewController()
        let settingsVC = RMSettingViewController()
        
        let navCharacters = UINavigationController(rootViewController: charactersVC)
        let navLocation = UINavigationController(rootViewController: locationsVC)
        let navEpisode = UINavigationController(rootViewController: episodesVC)
        let navSettings = UINavigationController(rootViewController: settingsVC)
        
        let navigationsVC = [navCharacters, navLocation, navEpisode, navSettings]
        
        charactersVC.navigationItem.largeTitleDisplayMode = .automatic
        locationsVC.navigationItem.largeTitleDisplayMode = .automatic
        episodesVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic
        
        navCharacters.tabBarItem = UITabBarItem(
            title: "Characters",
            image: UIImage(systemName: "person"),
            tag: 1
        )
        navLocation.tabBarItem = UITabBarItem(
            title: "Locations",
            image: UIImage(systemName: "globe"),
            tag: 2
        )
        navEpisode.tabBarItem = UITabBarItem(
            title: "Episodes",
            image: UIImage(systemName: "tv"),
            tag: 3
        )
        navSettings.tabBarItem = UITabBarItem(
            title: "Settings",
            image: UIImage(systemName: "gear"),
            tag: 4
        )
        
        for nav in navigationsVC {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers(
            [
                navCharacters, navLocation, navEpisode, navSettings
        ],
        animated: true
        )

    }

}

