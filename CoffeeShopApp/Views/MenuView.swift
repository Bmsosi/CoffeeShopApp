//
//  MenuView.swift
//  CoffeeShopApp
//
//  Created by laptop on 2026-02-01.
//

import SwiftUI

struct MenuView: View {
    //TRACKING THE QUANTITY
    @State private var orders: [MenuItemOrder] = menuItems.map {
        MenuItemOrder(item: $0)
    }
    var body: some View {
        List {
            ForEach(MenuCategory.allCases, id: \.self) { category in
                Section(header: Text(category.rawValue).font(.headline)) {
                    ForEach(menuItems.filter { $0.category == category}) { item in
                        HStack {
                            Image(systemName: item.imageName)
                                .font(.title2)
                                .foregroundColor(.brown)
                                .frame(width: 50)
                            
                            VStack(alignment: .leading) {
                                Text(item.name)
                                    .font(.headline)
                                Text("$\(item.price, specifier: "%.2f")")
                                    .foregroundColor(.gray)
                            }
                            
                            Spacer()
                            //Stepper to Select quantity
                            Stepper(value: bindingFor(item), in: 0...10) {
                                Text("\(orderQuantityFor(item))")
                                    .frame(width: 40)
                            }
                        }
                        .padding(.vertical, 8)
                    }
                }
            }
        }
        //Showing total and button
        let total = orders.reduce(0) { $0 + $1.totalPrice }
        VStack {
            Text("Total: $\(total, specifier: "%.2f")")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.bottom, 6)
            
            Button("Place Your Order") {
                let orderedItems = orders.filter { $0.quantity > 0 }
                print("Customer ordered:")
                for order in orderedItems {
                    print("\(order.quantity) x \(order.item.name) = $\(order.totalPrice)")
                }
            }
            .buttonStyle(.borderedProminent)
        }
        
        
        
        .listStyle(.insetGrouped)
        .navigationTitle("Menu")
    }
    //MARK: -Helpers
    func bindingFor(_ item: MenuItem) -> Binding<Int> {
        guard let index = orders.firstIndex(where: { $0.item.id == item.id}) else {
            return .constant(0)
        }
        return $orders[index].quantity
    }
    func orderQuantityFor(_ item: MenuItem) -> Int {
        return orders.first(where: { $0.item.id == item.id })?.quantity ?? 0
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            MenuView()
        }
    }
}
