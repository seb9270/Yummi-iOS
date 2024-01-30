//
//  Models.swift
//  Yummi iOS
//
//  Created by Micko, Sebastian (AMM) on 24/01/2024.
//

import Foundation

enum Category {
    case fruit
    case vegetable
    case meat
    case other
}

struct ingredients {
    let name: String
    var quantity: Int
    var unit: String
    var category: Category
    let expiryDate: String
}

struct possibleIngredients {
    var ingredientList = [ingredients(name: "Mango", quantity: 3, unit: "mangoes", category: Category.fruit, expiryDate: "27 November 2024"),
                          ingredients(name: "Onion", quantity: 35, unit: "units", category: Category.vegetable, expiryDate: "30th March 2024"),
                          ingredients(name: "Steak", quantity: 10, unit: "Kgs", category: Category.meat, expiryDate: "31st July 2025")]
}
