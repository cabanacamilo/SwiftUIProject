//
//  RatingsView.swift
//  SwiftUIProject
//
//  Created by Camilo Cabana on 2022/01/25.
//

import SwiftUI

struct RatingsView: View {
    var body: some View {
        VStack {
            Text("Chicken Pizza")
            HStack {
                ForEach(0 ..< 4) { item in
                    Image("Pizza Slice")
                }
            }
        }
    }
}

struct RatingsView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsView()
    }
}
