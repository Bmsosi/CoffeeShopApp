//
//  MenuItemOrder.swift
//  CoffeeShopApp
//
//  Created by laptop on 2026-02-01.
//
import Foundation

struct MenuItemOrder: Identifiable {
    let id = UUID()
    let item: MenuItem
    var quantity: Int = 0
    
    var totalPrice: Double {
        return Double(quantity) * item.price
    }
    
}
