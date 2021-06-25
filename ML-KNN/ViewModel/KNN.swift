//
//  KNN.swift
//  ML-KNN
//
//  Created by Nathalia Cardoso on 23/06/21.
//

import Foundation

class KNN {
    
    private (set) var classes : [KNNModel] = []
    private (set) var distances : [Distance] = []
    let data = IrisDatabase()
    
    func train() {
        let versicolor = KNNModel(padroes: data.versicolor, classIdentifier: "Versicolor")
        let setosa = KNNModel(padroes: data.setosa, classIdentifier: "Setosa")
        let virginica = KNNModel(padroes: data.virginica, classIdentifier: "Virginica")
        
        self.classes = [versicolor, setosa, virginica]
    }
    
    func predict(k: Int, data: [Double]) {
        self.calculateDistances(data: data)
        
        let nn = nearestNeighbors(K: k)
        classifie(nearestNeighbors: nn)
    }
    
    func calculateDistances(data: [Double]) {
        self.distances = []
        
        self.euclideanDistance(data: data)
        
    }
    
    func euclideanDistance(data: [Double]) {
        classes.forEach {
            let identifier = $0.classIdentifier
            $0.padroes.forEach {
                var sum: Double = 0
                for i in 0..<$0.count{
                    sum += ($0[i] - data[i])*($0[i] - data[i])
                }
                let sqrt = sum.squareRoot()
                distances.append(Distance(value: sqrt, classIdentifier: identifier))
            }
        }
    }
    
    func nearestNeighbors(K: Int) -> [String:Int] {
        self.distances.sort()
        let nearestDistances = distances.prefix(K)
        let nearestNeighbors = nearestDistances.reduce(into: [:]) { counts, distance in
            counts[distance.classIdentifier, default: 0] += 1
        }
        return nearestNeighbors
    }
    
    func classifie(nearestNeighbors: [String:Int]) {
        print(nearestNeighbors)
        print(nearestNeighbors.sorted { $0.1 > $1.1 }.first!.key)
    }
}



