//
//  Object.swift
//  Challenge
//
//  Created by Guillaume Dochy on 26/09/2024.
//

import Foundation

struct Pokemon: Codable, Identifiable {
    var id: String { UUID().uuidString }
    let name: String
    let url: URL
}
