//
//  MapView.swift
//  LandMark
//
//  Created by Fizzah Jabeen on 11/7/23.
//

import SwiftUI
import MapKit
struct MapView: View {
    var body: some View {
        Map(initialPosition:
                .region(region))
    }
    private var region: MKCoordinateRegion{
        MKCoordinateRegion(center:
                            CLLocationCoordinate2D(latitude: 34.001_286, longitude: -116.166_868),
                           span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

#Preview {
    MapView()
}
