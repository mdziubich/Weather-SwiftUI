//
//  WeatherApp.swift
//  Weather
//
//  Created by Małgorzata Dziubich on 03/11/2024.
//

import SwiftUI

@main
struct WeatherApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            AppHomeView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
