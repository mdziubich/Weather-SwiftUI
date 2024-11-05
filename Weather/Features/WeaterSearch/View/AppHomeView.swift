//
//  ContentView.swift
//  Weather
//
//  Created by Małgorzata Dziubich on 03/11/2024.
//

import SwiftUI
import CoreData

struct AppHomeView: View {

    @State private var searchInput: String = ""

    var body: some View {
        NavigationView {
            VStack {
                MapView()
                    .frame(height: UIScreen.main.bounds.height / 4)
                    .padding(16)

                TextField("Search city", text: $searchInput)
                    .frame(height: 20.0)
                    .padding(DesignSystem.Spacing.small.rawValue)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .padding(.horizontal)
                    .offset(y: -30)
                    .padding(.bottom, -46)

                CitiesListView()
                Spacer()
            }
            .background(DesignSystem.Color.backgroundPrimary.value)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
//                    ToolbarItem {
//                        Button(action: addItem) {
//                            Label("Add Item", systemImage: "plus")
//                        }
//                    }
            }
            .navigationBarTitle("Weather")
        }
    }
}

#Preview {
    AppHomeView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
