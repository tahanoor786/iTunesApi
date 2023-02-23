//
//  AlbumListView.swift
//  iTunesApi
//
//  Created by Taha Noor on 2/24/23.
//

import SwiftUI

struct AlbumListView: View {
    @StateObject var viewModel = AlbumListViewModel()
    
    var body: some View {
        List(viewModel.albums) { album in
            Text(album.collectionName)
            
        }.onAppear{
            viewModel.fetchAlbum(for: viewModel.searchItem)
        }
    }
}

struct AlbumListView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumListView()
    }
}
