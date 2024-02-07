//
//  ContentView.swift
//  Yummi iOS
//
//  Created by Micko, Sebastian (AMM) on 23/01/2024.
//

import SwiftUI
import Foundation

struct ContentView: View {
    @State var ingredients = Ingredient.examples
    @State private var selectedIngredient: Int = 0
    @State private var cycle: Int = 0
    @State private var newName = ""
    @State private var newQuantityString = ""
    @State private var newQuantityInt = 0
    @State private var newUnit = ""
    @State private var newCategory: Category = .other
    @State private var newExpiryDate = ""
    
    
    
    
    var body: some View {
        Form {
            VStack {
                Text(ingredients[selectedIngredient].ingredientDisplayed)
                Button("Next Ingredient", action: {
                    if selectedIngredient < ingredients.count - 1 {
                        selectedIngredient += 1
                    }
                    else {
                        selectedIngredient = 0
                    }
                })
            }
            Section {
                if cycle == 0 {
                    TextField("Enter name:", text: $newName)
                }
                else if cycle == 1 {
                    TextField("Enter quantity:", text: $newQuantityString)
                }
                else if cycle == 2 {
                    TextField("Enter unit:", text: $newUnit)
                }
                else if cycle == 3 {
                    Picker("Choose Category", selection: $newCategory) {
                        ForEach(Category.allCases, id:\.self) { category in Text(category.rawValue) }
                    }
                    
                }
                else if cycle == 4 {
                    TextField("Enter expiry date:", text: $newExpiryDate)
                }
                Button("SUBMIT", action: {
                    if cycle < 4 {
                        cycle += 1
                    }
                    else {
                        cycle = 0
                        newQuantityInt = Int(newQuantityString) ?? 0
                        var newIngredient = Ingredient(name: newName, quantity: newQuantityInt, unit: newUnit, category: newCategory, expiryDate: newExpiryDate)
                        ingredients.append(newIngredient)
                        newName = ""
                        newQuantityString = ""
                        newUnit = ""
                        newExpiryDate = ""
                    }
                })
            }
        }
    }
}

#Preview {
    ContentView()
}

