//
//  ContentView.swift
//  ML-KNN
//
//  Created by Nathalia Cardoso on 23/06/21.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        let knn = KNN()
        
        knn.train()
        
        //versicolor test
//        knn.predict(k:5, data: [6.4, 3.2, 1.5])
//        knn.predict(k:5, data: [5.5, 2.3, 1.3])
//        knn.predict(k:5, data: [6.3, 3.3, 1.6])
//        knn.predict(k:5, data: [6.4, 2.9, 1.3])
//        knn.predict(k:5, data: [6.7, 3 , 1.7])
//        knn.predict(k:5, data: [5.4, 3 , 1.5])
//        knn.predict(k:5, data: [5.5, 2.6, 1.2])
//        knn.predict(k:5, data: [5.6, 2.7, 1.3])
//        knn.predict(k:5, data: [5.7, 2.9, 1.3])
//        knn.predict(k:5, data: [5.7, 2.8, 1.3])
        
        //setosa test
        
//        knn.predict(k:5, data: [4.9, 3 , 0.2])
//        knn.predict(k:5, data: [4.4, 2.9, 0.2])
//        knn.predict(k:5, data: [5.4, 3.7, 0.2])
//        knn.predict(k:5, data: [5.4, 3.9, 0.4])
//        knn.predict(k:5, data: [5.1, 3.8, 0.3])
//        knn.predict(k:5, data: [5.1, 3.3, 0.5])
//        knn.predict(k:5, data: [5.2, 4.1, 0.1])
//        knn.predict(k:5, data: [4.4, 3.2, 0.2])
//        knn.predict(k:5, data: [5.1, 3.8, 0.2])
//        knn.predict(k:5, data: [5.3, 3.7, 0.2])
        
        //virginica test
        
//        knn.predict(k:5, data: [5.8, 2.7, 1.9])
//        knn.predict(k:5, data: [7.2, 3.6, 2.5])
//        knn.predict(k:5, data: [6.8, 3 , 2.1])
//        knn.predict(k:5, data: [5.8, 2.8, 2.4])
//        knn.predict(k:5, data: [6.3, 2.7, 1.8])
//        knn.predict(k:5, data: [6.3, 3.4, 2.4])
//        knn.predict(k:5, data: [6.7, 3.1, 2.4])
//        knn.predict(k:5, data: [6.7, 3, 2.3])
//        knn.predict(k:5, data: [6.5, 3 , 2 ])
//        knn.predict(k:5, data: [5.9, 3 , 1.8])

        
    }
    
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
