//
//  RootTabBarView.swift
//  SwiftUIProject
//
//  Created by Camilo Cabana on 2022/01/31.
//

import SwiftUI

struct RootTabBarView: View {
    var body: some View {
        TabView {
            ContentView(orderModel: OrderModel())
                .tabItem {
                    Image(systemName: "cart")
                    Text("Order")
                }
            HistoryView()
                .tabItem {
                    Image(systemName: "book")
                    Text("History")
                }
        }
        .accentColor(Color("B1"))
    }
}

struct RootTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabBarView()
            .environmentObject(UserPreferences())
            .previewInterfaceOrientation(.portrait)
    }
}
