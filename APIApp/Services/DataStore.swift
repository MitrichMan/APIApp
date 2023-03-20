//
//  DataStore.swift
//  APIApp
//
//  Created by Dmitrii Melnikov on 20.03.2023.
//

import Foundation

final class DataStore {
    static let shared = DataStore()
    
    let characterUrl = "https://rickandmortyapi.com/api/character/1"
    
    private init() {}
}
