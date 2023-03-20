//
//  FirstViewController.swift
//  APIApp
//
//  Created by Dmitrii Melnikov on 20.03.2023.
//

import UIKit

class FirstViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchCharacter()
    }
}
    
    // MARK: - Networking
extension FirstViewController {
    private func fetchCharacter() {
        guard let url = URL(string: DataStore.shared.characterUrl) else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data else { return }
            
            let decoder = JSONDecoder()
            
            do {
                let character = try decoder.decode(Character.self, from: data)
                print(character)
            } catch let error {
                print(error)
            }
        }.resume()
    }
}
