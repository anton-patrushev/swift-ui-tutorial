//
//  LandmarkList.swift
//  Tutorial
//
//  Created by Anton Patrushev on 3.06.21.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @Binding var showFavoritesOnly: Bool
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            if(!showFavoritesOnly) {
                return true
            }
            
            return landmark.isFavorite
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    @State static var showFavoritesOnly: Bool = false
    
    static var previews: some View {
        ForEach(["iPhone 12"], id: \.self) { devicename in
            LandmarkList(showFavoritesOnly: $showFavoritesOnly)
                .environmentObject(ModelData())
                .previewDevice(PreviewDevice(rawValue: devicename))
                .previewDisplayName(devicename)
        }
    }
}
