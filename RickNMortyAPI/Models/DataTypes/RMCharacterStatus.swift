//
//  RMCharacterStatus.swift
//  RickNMortyAPI
//
//  Created by Тимур on 21.01.2023.
//

import Foundation

enum RMCharacterStatus: String, Codable {
    case alive = "Alive"
    case dead = "Dead"
    case unknown = "unknown"
}
