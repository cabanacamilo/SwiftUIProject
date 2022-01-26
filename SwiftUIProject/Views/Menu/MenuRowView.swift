//
//  MenuRowView.swift
//  SwiftUIProject
//
//  Created by Camilo Cabana on 2022/01/25.
//

import SwiftUI

struct MenuRowView: View {
    var body: some View {
        HStack(alignment: .top, spacing: 15) {
            Image("1_100w")
                
//                .border(Color("G4"), width: 4)
//                .cornerRadius(10)
                .clipShape(Capsule())
                .shadow(color: .black.opacity(0.5), radius: 5, x: 5, y: 5)
            VStack(alignment: .leading, spacing: 5) {
                Text("Chicken Pizza")
                    .font(.title)
                    .fontWeight(.light)
                RatingsView()
            }
            Spacer()
        }
    }
}

struct MenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        MenuRowView()
    }
}
