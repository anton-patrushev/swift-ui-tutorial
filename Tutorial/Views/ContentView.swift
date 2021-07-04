//
//  ContentView.swift
//  Tutorial
//
//  Created by Anton Patrushev on 3.06.21.
//

import SwiftUI

struct ContentView: View {
    @State var selectedTab: Tab = Tab.featured
    @State var showFavoritesOnly: Bool = false
    
    var body: some View {
        TabView(selection: $selectedTab) {
            CategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)
            
            
            LandmarkList(showFavoritesOnly: $showFavoritesOnly)
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}

extension ContentView {
    enum Tab {
        case featured
        case list
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
