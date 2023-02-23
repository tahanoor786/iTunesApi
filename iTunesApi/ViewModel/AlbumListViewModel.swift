//
//  AlbumListViewModel.swift
//  iTunesApi
//
//  Created by Taha Noor on 2/24/23.
//

import Foundation

class AlbumListViewModel : ObservableObject {
    @Published var searchItem : String = "Jack Johnson"
    @Published var albums = [Album]()
    
    func fetchAlbum(for searchTerm: String) {
        
        let urlString: String = "https://itunes.apple.com/search?term=jack+johnson&entity=album&limit=5"
        
        guard let url = URL(string: urlString) else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("There was a error in URL session \(error.localizedDescription)")
            }
            else if let data = data {
                do {
                    let result = try JSONDecoder().decode(AlbumResult.self, from: data)
                    self.albums = result.results
                } catch {
                    print("this is the error in json decoder \(error)")
                }
                
            }
        }.resume()
    }
    
    
    
}
