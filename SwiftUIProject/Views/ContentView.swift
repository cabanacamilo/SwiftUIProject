//
//  ContentView.swift
//  SwiftUIProject
//
//  Created by Camilo Cabana on 2022/01/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ContentHeaderView()
                .layoutPriority(2)
            PageTitleView(title: "Order Pizza")
            MenuListView()
                .layoutPriority(1)
            OrderListView()
                .layoutPriority(1)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .colorScheme(.dark)
                .background(Color.black)
            ContentView()
        }
        
    }
}
