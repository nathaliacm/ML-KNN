//
//  Distance.swift
//  ML-KNN
//
//  Created by Nathalia Cardoso on 24/06/21.
//

import Foundation

struct Distance : Comparable {

    var value: Double
    var classIdentifier: String
    
    static func < (lhs: Distance, rhs: Distance) -> Bool {
        return lhs.value < rhs.value
    }
}
