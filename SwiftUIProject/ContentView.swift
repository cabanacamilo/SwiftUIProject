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
            ZStack {
                Image("Surf Board")
                    .resizable()
                    .scaledToFit()
                Text("Welcome")
                    .font(.title)
            }
            Text("Order Pizza")
                .font(.largeTitle)
            Text("Menu")
            List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                HStack(alignment: .top, spacing: 15) {
                    Image("1_100w")
                    Text("Chicken Pizza")
                    Spacer()
                }
            }
            Text("Your Order")
            
            List(0 ..< 5) { item in
                HStack(alignment: .firstTextBaseline) {
                    Text("Your order item here")
                    Spacer()
                    Text("¥0.00")
                }
            }
            Spacer()
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
