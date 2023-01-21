//
//  RMService.swift
//  RickNMortyAPI
//
//  Created by Тимур on 21.01.2023.
//

import Foundation

final class RMService {
    static let shared = RMService()
    
    private init() {}
    
    public func execute(_ request: RMRequest, completion: @escaping () -> Void) {
        
    }
}
