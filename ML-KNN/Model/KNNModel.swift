//
//  KNNModel.swift
//  ML-KNN
//
//  Created by Nathalia Cardoso on 24/06/21.
//

import Foundation

struct KNNModel {
    var padroes: [[Double]]
    var classIdentifier: String
    
    
    init(padroes: [[Double]], classIdentifier: String){
        self.padroes = padroes
        self.classIdentifier = classIdentifier
    }
}
