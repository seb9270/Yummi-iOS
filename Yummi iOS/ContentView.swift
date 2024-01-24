//
//  ContentView.swift
//  Yummi iOS
//
//  Created by Micko, Sebastian (AMM) on 23/01/2024.
//

import SwiftUI

struct ContentView: View {
    let ingredient = ingredients(name: "Onion", quantity: 35, unit: "units", category: "Vegetables", expiryDate: "30th March 2024")
    
    func displayIngredient() -> String{
        return """
Name: \(ingredient.name)
Quantity: \(ingredient.quantity) \(ingredient.unit)
Category: \(ingredient.category)
Expiry date: \(ingredient.expiryDate)
"""
    }
    
    var body: some View {
        VStack {
            //Text(displayIngredient())
            //Text()
        }

    }
}

#Preview {
    ContentView()
}

