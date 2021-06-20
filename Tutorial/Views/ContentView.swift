//
//  ContentView.swift
//  Tutorial
//
//  Created by Anton Patrushev on 3.06.21.
//

import SwiftUI

struct ContentView: View {
    @State var showFavoritesOnly: Bool = false
    
    var body: some View {
        LandmarkList(showFavoritesOnly: $showFavoritesOnly)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
