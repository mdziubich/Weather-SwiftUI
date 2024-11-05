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

                TextField("Search city", text: $searchInput)
                    .padding(DesignSystem.Spacing.medium.value)
                    .background(Color(.systemGray6))
                    .cornerRadius(DesignSystem.Radius.medium.value)
                    .padding(.horizontal, DesignSystem.Spacing.large.rawValue)
                    .offset(y: -35)
                    .padding(.bottom, -50)

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
