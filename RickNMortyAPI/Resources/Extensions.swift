//
//  Extensions.swift
//  RickNMortyAPI
//
//  Created by Тимур on 22.01.2023.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
