//
//  ContentView.swift
//  Yummi iOS
//
//  Created by Micko, Sebastian (AMM) on 23/01/2024.
//

import SwiftUI

struct ContentView: View {
    
    let ingredients= ingredients(name: "Onion")
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(ingredients)
        }
        .padding()
    }
}

#Preview {
    ContentView()
    }
    
struct ingredients {
    var name: String
}
