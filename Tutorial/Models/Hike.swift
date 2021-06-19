//
//  Hike.swift
//  Tutorial
//
//  Created by Anton Patrushev on 19.06.21.
//

import Foundation

struct Hike: Codable, Hashable, Identifiable {
    var id: Int
    var name: String
    var distance: Double
    var difficulty: Int
    var observations: [Observation]
    
    static var formatter = LengthFormatter()
    
    var distanceText: String {
        return Hike.formatter.string(fromValue: self.distance, unit: LengthFormatter.Unit.kilometer)
    }
}

extension Hike {
    struct Observation: Codable, Hashable {
        var distanceFromStart: Double
        
        var elevation: Range<Double>
        var pace: Range<Double>
        var heartRate: Range<Double>
    }
}
