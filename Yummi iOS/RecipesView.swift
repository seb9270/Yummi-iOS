//
//  RecipesView.swift
//  Yummi iOS
//
//  Created by Micko, Sebastian (AMM) on 07/02/2024.
//

import SwiftUI


struct RecipesView: View {
    @State var exampleRecipes = Recipes.exampleRecipes
    
    
    var body: some View {
        VStack {
            ForEach(exampleRecipes) { recipe in
                Text(recipe.name)
            }
        }
    }
}

#Preview {
    RecipesView()
}
