//
//  CategoryRow.swift
//  Tutorial
//
//  Created by Anton Patrushev on 7/3/21.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Landmark]
    
    var body: some View {
        VStack(alignment: HorizontalAlignment.leading) {
            Text(categoryName)
                .font(Font.headline)
                .padding(Edge.Set.leading, 15)
                .padding(Edge.Set.top, 5)
            
            
            ScrollView(Axis.Set.horizontal, showsIndicators: false) {
                HStack(alignment: VerticalAlignment.top, spacing: 0) {
                    ForEach(items) { landmark in
                        NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                            CategoryItem(landmark: landmark)
                        }
                    }
                }
            }
            .frame(height: 185)
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    
    static var previews: some View {
        CategoryRow(
            categoryName: landmarks[0].category.rawValue,
            items: Array(landmarks.prefix(4))
        )
    }
}
