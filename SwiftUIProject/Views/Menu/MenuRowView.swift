//
//  MenuRowView.swift
//  SwiftUIProject
//
//  Created by Camilo Cabana on 2022/01/25.
//

import SwiftUI

struct MenuRowView: View {
    var menuItem: MenuItem = testMenuItem
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 15) {
                Image("\(menuItem.id)_100w")
    //                .border(Color("G4"), width: 4)
    //                .cornerRadius(10)
                    .clipShape(Capsule())
                    .shadow(color: .black.opacity(0.5), radius: 5, x: 5, y: 5)
                VStack(alignment: .leading, spacing: 5) {
                    Text(menuItem.name)
                        .font(.title)
                        .fontWeight(.light)
                    RatingsView(count: menuItem.rating)
                }
                Spacer()
            }
            Text(menuItem.description)
        }
    }
}

struct MenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        MenuRowView()
    }
}
