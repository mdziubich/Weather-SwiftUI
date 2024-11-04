//
//  CitiesListView.swift
//  Weather
//
//  Created by Małgorzata Dziubich on 03/11/2024.
//

import Foundation
import SwiftUI

struct CitiesListView: View {

    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)

    private var items: FetchedResults<Item>

    var body: some View {
        List {
            ForEach(items) { item in
                NavigationLink {
                    Text("Item at \(item.timestamp!, formatter: itemFormatter)")
                } label: {
                    Text(item.timestamp!, formatter: itemFormatter)
                        .font(.title3)
                }
                .listRowBackground(Color.green)
            }
            .onDelete(perform: deleteItems)
            .background(Color.red)
        }
        .scrollContentBackground(.hidden)
    }

    private let itemFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .medium
        return formatter
    }()

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            offsets.map { items[$0] }.forEach(viewContext.delete)

            do {
                try viewContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }

    private func addItem() {
        withAnimation {
            let newItem = Item(context: viewContext)
            newItem.timestamp = Date()

            do {
                try viewContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }
}

#Preview {
    CitiesListView()
}
