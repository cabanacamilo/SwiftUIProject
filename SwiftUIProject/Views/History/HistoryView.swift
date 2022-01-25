//
//  HistoryView.swift
//  SwiftUIProject
//
//  Created by Camilo Cabana on 2022/01/25.
//

import SwiftUI

struct HistoryView: View {
    var body: some View {
        VStack {
            ContentHeaderView()
            PageTitleView(title: "Pizza History")
            HistoryListView()
        }
        .padding()
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HistoryView()
            HistoryView()
                .colorScheme(.dark)
                .background(.black)
        }
    }
}
