//
//  Sandwich.swift
//  Food Tracker
//
//  Created by Фёдор Ткаченко on 20.09.20.
//

import Foundation

struct Sandwich: Identifiable {
    var id = UUID()
    var name: String
    var ingredientCount: Int
    var isSpicy: Bool = false
    
    var imageName: String {
        return name
    }
    
    var thumbnailName: String {
        return "sandwich"
    }
}

let testData: [Sandwich] = [
    Sandwich(name: "Pastrana", ingredientCount: 3, isSpicy: false),
    Sandwich(name: "Homemade Petty", ingredientCount: 4, isSpicy: false),
    Sandwich(name: "Petty", ingredientCount: 2, isSpicy: false),
    Sandwich(name: "Hot Perry", ingredientCount: 3, isSpicy: true),
    Sandwich(name: "Hot Pizza Garlic", ingredientCount: 6, isSpicy: true),
    Sandwich(name: "Pizza", ingredientCount: 4, isSpicy: false),
    Sandwich(name: "Pizza Garlic", ingredientCount: 7, isSpicy: false),
    Sandwich(name: "Hot Pastrana", ingredientCount: 5, isSpicy: true),
    Sandwich(name: "Pastrana", ingredientCount: 3, isSpicy: false),
    Sandwich(name: "Homemade Petty", ingredientCount: 4, isSpicy: false),
    Sandwich(name: "Petty", ingredientCount: 2, isSpicy: false),
    Sandwich(name: "Hot Perry", ingredientCount: 3, isSpicy: true),
    Sandwich(name: "Hot Pizza Garlic", ingredientCount: 6, isSpicy: true),
    Sandwich(name: "Pizza", ingredientCount: 4, isSpicy: false),
    Sandwich(name: "Pizza Garlic", ingredientCount: 7, isSpicy: false),
    Sandwich(name: "Hot Pastrana", ingredientCount: 5, isSpicy: true),
]
