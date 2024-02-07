//
//  SchoolViewModel.swift
//  PhotonTest
//
//  Created by Puneetpal Singh on 07/02/24.
//

import Foundation

class SchoolViewModel: ObservableObject {
    @Published var schools:[School] = []
    
    func fetchSchools() {
        guard let url = URL(string: "https://data.cityofnewyork.us/resource/s3k6-pzi2.json") else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data, error == nil else { return }
            
            let schools = try? JSONDecoder().decode([School].self, from: data)
            
            DispatchQueue.main.async {
                self.schools = schools ?? []
            }
        }.resume()
    }
}
