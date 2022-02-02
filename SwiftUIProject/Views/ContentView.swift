//
//  ContentView.swift
//  SwiftUIProject
//
//  Created by Camilo Cabana on 2022/01/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var orderModel: OrderModel
    @State var isMenuDisplayed: Bool = true
    var body: some View {
        VStack {
//            ContentHeaderView()
//                .layoutPriority(2)
            Button(action: {isMenuDisplayed.toggle()}) {
                PageTitleView(title: "Order Pizza",isDisplayingOrders: isMenuDisplayed)
                    .padding(.bottom)
            }
            MenuListView(orderModel: orderModel)
                .layoutPriority(isMenuDisplayed ? 1.0 : 0.5)
            OrderListView(orderModel: orderModel)
                .layoutPriority(isMenuDisplayed ? 0.5 : 1.0)
                .animation(.spring())
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(orderModel: OrderModel())
                .colorScheme(.dark)
                .background(Color.black)
                .environmentObject(UserPreferences())
            ContentView(orderModel: OrderModel())
                .environmentObject(UserPreferences())
        }
        
    }
}
