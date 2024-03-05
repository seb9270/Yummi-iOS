//
//  IngredientView.swift
//  Yummi iOS
//
//  Created by Micko, Sebastian (AMM) on 23/01/2024.
//

import SwiftUI
import Foundation

struct IngredientsView: View {
    @State var ingredients = Ingredient.examples.sorted(by: { $0.expiryDate > $1.expiryDate})
    @State private var selectedIngredient: Int = 0
    @State private var newName = ""
    @State private var newQuantityString = ""
    @State private var newQuantityInt = 0
    @State private var newUnit = ""
    @State private var newCategory: Category = .other
    @State private var newExpiryDate = ""
    @State var inputExpiry = Date()
    @State var formatter1 = DateFormatter()
    
    func delete(at offsets: IndexSet) {
        
    }
        
    
    
    var body: some View {
        Form {
            Section {
                ForEach(ingredients) { ingredient in
                    Text("\(ingredient.quantity) \(ingredient.unit) of \(ingredient.name)")
                }
                .onDelete(perform: delete(at: ) )
                
                
            }
            Section {
             
                TextField("Enter name:", text: $newName)
                
                TextField("Enter quantity:", text: $newQuantityString)
               
                TextField("Enter unit:", text: $newUnit)
                
                Picker("Choose Category", selection: $newCategory) {
                    ForEach(Category.allCases, id:\.self) { category in Text(category.rawValue) }
                }
                
                DatePicker("Expiry Date", selection: $inputExpiry, displayedComponents: [.date])
                
                Button("SUBMIT", action: {
                    newQuantityInt = Int(newQuantityString) ?? 0
                        
                    formatter1.dateStyle = .short
                    newExpiryDate = formatter1.string(from: inputExpiry)
                        
                        
                    var newIngredient = Ingredient(name: newName, quantity: newQuantityInt, unit: newUnit, category: newCategory, expiryDate: newExpiryDate)
                    
                    ingredients.append(newIngredient)
                    newName = ""
                    newQuantityString = ""
                    newUnit = ""
                    newExpiryDate = ""
                    
                })
            }
        }
    }
}

#Preview {
    IngredientsView()
}

