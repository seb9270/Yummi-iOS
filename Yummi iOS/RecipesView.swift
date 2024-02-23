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
                    //Text(recipe.name)
                    VStack(alignment: .leading) {
                        Text(recipe.name)
                        Text(recipe.ingredients[0].name)
                        
                        //ForEach(recipe.ingredients, id: \.name) in {
                            
                        //}
                        
                        
                    }.background(Color.red)
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
