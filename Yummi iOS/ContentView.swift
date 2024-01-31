//
//  ContentView.swift
//  Yummi iOS
//
//  Created by Micko, Sebastian (AMM) on 23/01/2024.
//

import SwiftUI
import Foundation

struct ContentView: View {
    @State private var possibleIngredients = PossibleIngredients()
    @State private var selectedIngredient: Int = 2
    @State private var newIngredient: String = ""
    @State private var cycle: Int = 0
    
    
    var body: some View {
        Form {
            VStack {
                Text(possibleIngredients.ingredientList[selectedIngredient].displayIngredient())
                Button("Next Ingredient", action: {
                    if selectedIngredient < self.possibleIngredients.ingredientList.count - 1 {
                        selectedIngredient += 1
                    }
                    else {
                        selectedIngredient = 0
                    }
                })
            }
            Section {
                if cycle == 0 {
                    TextField("Enter name:", text: $newIngredient)
                        //cycle += 1
                }
                else if cycle == 1 {
                    
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

