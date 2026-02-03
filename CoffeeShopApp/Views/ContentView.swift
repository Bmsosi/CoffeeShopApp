//
//  ContentView.swift
//  CoffeeShopApp
//
//  Created by laptop on 2026-02-01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 30) {
                Image(systemName: "cup.and.saucer.fill")
                    .font(.system(size: 80))
                    .foregroundColor(.brown)
                
                Text("Welcome to Brew Haven")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text("Fresh coffee, made with love.")
                    .foregroundColor(.gray)
                
                NavigationLink("View Menu here") {
                    MenuView()
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

 
