//
//  RootView.swift
//  Yummi iOS
//
//  Created by Micko, Sebastian (AMM) on 28/02/2024.
//

import SwiftUI

struct RootView: View {
    var body: some View {
        TabView {
            RecipesView()
                .tabItem{
                    Text("Recipes")
                }
            ContentView()
                .tabItem {
                    Image(systemName: "pencil.and.list.clipboard")
                    Text("Ingredients")
                }
        }
    }
}

#Preview {
    RootView()
}
