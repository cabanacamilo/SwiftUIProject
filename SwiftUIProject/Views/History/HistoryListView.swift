//
//  HistoryListView.swift
//  SwiftUIProject
//
//  Created by Camilo Cabana on 2022/01/25.
//

import SwiftUI

struct HistoryListView: View {
    var historyModel = HistoryModel()
    @Binding var imageID: Int
    var body: some View {
        NavigationView {
            List(historyModel.historyItems) { item in
                NavigationLink(destination: HistoryDetailView(historyItem: item, imageID: $imageID)) {
                    HistoryRowView(historyItem: item)
                }
                
            }
            .listStyle(.plain)
        }
        
    }
}

struct HistoryListView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryListView(historyModel: HistoryModel(), imageID: .constant(0))
    }
}
