//
//  Character.swift
//  APIApp
//
//  Created by Dmitrii Melnikov on 20.03.2023.
//

import Foundation

struct Character: Decodable {
    let id: Int
    let name: String
    let status: String
    let species: String
    let type: String
    let gender: String
    let origin: Origin
    let location: Location
    let image: URL
    let episode: [URL]
    let url: URL
    let created: String
}

struct Origin: Decodable {
    let name: String
    let url: URL
}

struct Location: Decodable {
    let name: String
    let url: URL
}
