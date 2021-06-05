//
//  LandmarkRow.swift
//  Tutorial
//
//  Created by Anton Patrushev on 3.06.21.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            
            Text(landmark.name)
            
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(Color.yellow)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var modelData = ModelData()
    
    static var previews: some View {
        Group {
            LandmarkRow(landmark: modelData.landmarks[1])
            LandmarkRow(landmark: modelData.landmarks[11])
        }
        .previewLayout(PreviewLayout.fixed(width: 300, height: 70))
    }
}
