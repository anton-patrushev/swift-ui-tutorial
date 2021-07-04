//
//  CategoryItem.swift
//  Tutorial
//
//  Created by Anton Patrushev on 7/3/21.
//

import SwiftUI

struct CategoryItem: View {
    var landmark: Landmark
    
    var body: some View {
        VStack(alignment: HorizontalAlignment.leading) {
            landmark.image
                .resizable()
                .renderingMode(Image.TemplateRenderingMode.original)
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            
            Text(landmark.name)
                .foregroundColor(Color.primary)
                .font(Font.caption)
        }
        .padding(Edge.Set.leading, 15)
        
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(landmark: ModelData().landmarks[0])
    }
}
