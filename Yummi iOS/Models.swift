//
//  Models.swift
//  Yummi iOS
//
//  Created by Micko, Sebastian (AMM) on 24/01/2024.
//

import Foundation

enum Category: String, CaseIterable {
    case fruit
    case vegetable
    case meat
    case other
}

struct ingredient {
    let name: String
    var quantity: Int
    var unit: String
    var category: Category
    let expiryDate: String
    
    func displayIngredient() -> String {
        return """
Name: \(name)
Quantity: \(quantity) \(unit)
Category: \(category.rawValue)
Expiry date: \(expiryDate)
"""
    }
}

struct PossibleIngredients {
    var ingredientList = [ingredient(name: "Mango", quantity: 3, unit: "mangoes", category: Category.fruit, expiryDate: "27 November 2024"),
                          ingredient(name: "Onion", quantity: 35, unit: "units", category: Category.vegetable, expiryDate: "30th March 2024"),
                          ingredient(name: "Steak", quantity: 10, unit: "Kgs", category: Category.meat, expiryDate: "31st July 2025")]
}
