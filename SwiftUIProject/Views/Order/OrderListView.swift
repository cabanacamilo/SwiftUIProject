//
//  OrderListView.swift
//  SwiftUIProject
//
//  Created by Camilo Cabana on 2022/01/25.
//

import SwiftUI

struct OrderListView: View {
    var orderModel: OrderModel
    var body: some View {
        VStack {
            List{
                Section(
                    header: ListHeaderView(orderModel: self.orderModel, text: "Your Order")
                ) {
                    ForEach(orderModel.orders) { item in
                        OrderRowView(orderItem: item)
                    }
                    .onDelete(perform: deleteCell)
                }
            }
            .listStyle(.plain)
        }
    }
    
    func deleteCell(at offset: IndexSet) {
        orderModel.orders.remove(atOffsets: offset)
    }
}

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView(orderModel: OrderModel())
    }
}
