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
            Text("Welcome")
                .font(.title)
            Image("Surf Board")
                .resizable()
                .scaledToFit()
            Text("Camilo Cabana")
                .font(.largeTitle)
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
