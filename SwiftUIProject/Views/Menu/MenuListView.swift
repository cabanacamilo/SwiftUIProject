//
//  MenuListView.swift
//  SwiftUIProject
//
//  Created by Camilo Cabana on 2022/01/25.
//

import SwiftUI

struct MenuListView: View {
    @ObservedObject var orderModel: OrderModel
    var menuList = MenuModel().menu
    var body: some View {
        VStack {
            ListHeaderView(orderModel: orderModel, text: "Menu")
            NavigationView {
                List(menuList) { item in
                    NavigationLink(destination: MenuDetailView(orderModel: orderModel, menuItem: item)) {
                        MenuRowView(menuItem: item)
                    }
                }
                .listStyle(.plain)
                .navigationTitle("Pizza Order")
            }
        }
    }
}

struct MenuListView_Previews: PreviewProvider {
    static var previews: some View {
        MenuListView(orderModel: OrderModel())
    }
}
