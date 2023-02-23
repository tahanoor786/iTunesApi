//
//  ContentView.swift
//  iTunesApi
//
//  Created by Taha Noor on 2/23/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
           Text("Search Field")
                .padding()
            AlbumListView()
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
