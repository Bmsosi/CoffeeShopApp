//
//  MenuItem.swift
//  CoffeeShopApp
//
//  Created by laptop on 2026-02-01.
//

import Foundation

enum MenuCategory: String, CaseIterable {
    case coffee = "Coffee"
    case accompaniment = "Accompaniments"
    
}

struct MenuItem: Identifiable {
    let id = UUID()
    let name: String
    let price: Double
    let imageName: String
    let category: MenuCategory
}
