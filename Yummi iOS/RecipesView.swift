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
        List {
            ForEach(exampleRecipes) { recipe in
                HStack {
                    VStack(alignment: .leading) {
                        Text("\(recipe.name)")
                            .bold()
                        
                        Spacer()
                        
                        Text("\(recipe.rating)/10")
                        
                        Spacer()
                        
                        ForEach(recipe.ingredients) { ingredient in
                            Text("\(ingredient.name)")
                                .italic()
                        }
                        
                        
                        
                        
                    }//.background(Color.red)
                    Spacer()
                    Image(recipe.image)
                        .resizable()
                        .frame(width: 110.0, height: 110.0)
                    
                }
            }
        }
    }
}

#Preview {
    RecipesView()
}
