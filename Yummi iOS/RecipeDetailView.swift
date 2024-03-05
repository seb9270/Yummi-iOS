//
//  RecipeDetailView.swift
//  Yummi iOS
//
//  Created by Micko, Sebastian (AMM) on 05/03/2024.
//

import SwiftUI

struct RecipeDetailView: View {
    @State var recipe: Recipes
    
    var body: some View {
        List {
            Section { //Title
                HStack {
                    Spacer()
                    Text("\(recipe.name)")
                        .font(.largeTitle)
                    Spacer()
                }
            }
            
            Section { //Info
                VStack {
                    
                }
            }
        }
        .listStyle(.plain)
    }
}

#Preview {
    RecipeDetailView(recipe: Recipes.exampleRecipes[0])
}
