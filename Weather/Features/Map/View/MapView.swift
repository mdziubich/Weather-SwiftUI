//
//  MapView.swift
//  Weather
//
//  Created by Małgorzata Dziubich on 03/11/2024.
//

import Foundation
import MapKit
import SwiftUI

struct MapView: View {

    var body: some View {
        Map(initialPosition: .region(warsawCoordinates))
    }

    private var warsawCoordinates: MKCoordinateRegion {
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 52.237_049, longitude: 21.017_532),
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

#Preview {
    MapView()
}
