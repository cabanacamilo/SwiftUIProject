//
//  SelectedImageView.swift
//  SwiftUIProject
//
//  Created by Camilo Cabana on 2022/01/27.
//

import SwiftUI

struct SelectedImageView: View {
    var image: String
    var body: some View {
        Image(image)
            .resizable()
            .scaledToFit()
            .cornerRadius(30)
            .shadow(color: .black.opacity(0.5), radius: 10, x: 5, y: 5)
    }
}

struct SelectedImageView_Previews: PreviewProvider {
    static var previews: some View {
        SelectedImageView(image: "1_250w")
    }
}
