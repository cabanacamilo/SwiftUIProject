//
//  RatingsView.swift
//  SwiftUIProject
//
//  Created by Camilo Cabana on 2022/01/25.
//

import SwiftUI

struct RatingsView: View {
    var count: Int = 4
    var raiting: [String] {
        let symbolName = "\(count).circle"
        return Array(repeating: symbolName, count: count)
    }
    var body: some View {
        HStack {
            ForEach(raiting, id: \.self) { item in
                Image(systemName: item)
                    .font(.headline)
                    .foregroundColor(Color("G4"))
            }
        }
    }
}

struct RatingsView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsView(count: 4)
    }
}
