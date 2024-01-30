//
//  ContentView.swift
//  Yummi iOS
//
//  Created by Micko, Sebastian (AMM) on 23/01/2024.
//

import SwiftUI
import Foundation

struct ContentView: View {
    @State private var possibleIngredients = possibleIngredients()
    
    
    func displayIngredient() -> String {
        var ingredient = possibleIngredients.ingredientlist[0]
        var cat = ""
        if ingredient.category == Category.vegetable {
            cat = "Vegetable"
        }
        else if ingredient.category == Category.fruit {
            cat = "fruit"
        }
        else if ingredient.category == Category.meat {
            cat = "meat"
        }
        else if ingredient.category == Category.other {
            cat = "other"
        }
        
        return """
Name: \(ingredient.name)
Quantity: \(ingredient.quantity) \(ingredient.unit)
Category: \(cat)
Expiry date: \(ingredient.expiryDate)
"""
    }
    
    var body: some View {
        VStack {
            Text(displayIngredient())
        }

    }
}

#Preview {
    ContentView()
}

