//
//  MenuData.swift
//  CoffeeShopApp
//
//  Created by laptop on 2026-02-01.
//

import Foundation

let menuItems: [MenuItem] = [
    //Coffees
    MenuItem(name: "Espresso", price: 3.00, imageName: "cup.and.saucer", category: .coffee),
    MenuItem(name: "Cappuccino", price: 4.50, imageName: "cup.and.saucer.fill", category: .coffee),
    MenuItem(name: "Latte", price: 200.00, imageName: "cup.and.saucer.fill", category: .coffee),
    
    //Accompaniments
    MenuItem(name: "Muffin", price: 2.50, imageName: "birthday.cake", category: .accompaniment),
    MenuItem(name: "Mandazi", price: 2.50, imageName: "cake", category: .accompaniment),
    MenuItem(name: "Chapati", price: 1.50, imageName: "bread", category: .accompaniment)
    
    ]
