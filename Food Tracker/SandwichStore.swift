//
//  SandwichStore.swift
//  Food Tracker
//
//  Created by Фёдор Ткаченко on 23.09.20.
//

import Foundation

class SandwichStore: ObservableObject {
    @Published var sandwiches: [Sandwich]
    
    init(sandwiches: [Sandwich] = []) {
        self.sandwiches = sandwiches
    }
}

let testStore: SandwichStore = SandwichStore(sandwiches: testData)
