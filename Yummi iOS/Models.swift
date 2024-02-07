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

struct Ingredient: Identifiable {
    let id = UUID()
    let name: String
    var quantity: Int
    var unit: String
    var category: Category
    let expiryDate: String
    var ingredientDisplayed: String {
        return """
Name: \(name)
Quantity: \(quantity) \(unit)
Category: \(category.rawValue)
Expiry date: \(expiryDate)
"""
}
    
    static var examples = [Ingredient(name: "Mango", quantity: 3, unit: "mangoes", category: Category.fruit, expiryDate: "27 November 2024"),
                           Ingredient(name: "Onion", quantity: 35, unit: "units", category: Category.vegetable, expiryDate: "30th March 2024"),
                           Ingredient(name: "Steak", quantity: 10, unit: "Kgs", category: Category.meat, expiryDate: "31st July 2025")]
}


struct Recipes: Identifiable {
    let id = UUID()
    let name: String
    let ingredients: [Ingredient]
    let isFavourite: Bool
    let rating: Int
    
    //#if DEBUG
    static var exampleRecipes = [Recipes(name: "Banana Split", ingredients: [Ingredient(name: "Banana", quantity: 2, unit: "bananas", category: Category.fruit, expiryDate: "N/A"), Ingredient(name: "Ice Cream", quantity: 2, unit: "scoops", category: Category.other, expiryDate: "N/A")], isFavourite: true, rating: 8),
                                 Recipes(name: "Steak", ingredients: [Ingredient(name: "Beef", quantity: 20, unit: "pounds", category: Category.meat, expiryDate: "N/A")], isFavourite: false, rating: 10)]
    //#endif
    
    
    
}

