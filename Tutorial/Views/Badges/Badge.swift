//
//  Badge.swift
//  Tutorial
//
//  Created by Anton Patrushev on 6/13/21.
//

import SwiftUI

struct Badge: View {
    static let rotationCount = 8
    
    var badgeSymbols: some View {
        ForEach(0..<Badge.rotationCount) { index in
            RotatedBadgeSymbol(angle: Angle.degrees(Double(index) / Double(Badge.rotationCount)) * 360)
                .opacity(0.5)
        }
    }
    
    var body: some View {
        ZStack {
            BadgeBackground()
            
            GeometryReader { geometry in
                self.badgeSymbols
                    .scaleEffect(1 / 4, anchor: UnitPoint.top)
                    .position(x: geometry.size.width / 2, y: (3 / 4) * geometry.size.height)
            }
        }.scaledToFit()
    }
}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
