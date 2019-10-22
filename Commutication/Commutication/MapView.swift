//
//  MapView.swift
//  Commutication
//
//  Created by Allen Davis-Swing on 10/21/19.
//  Copyright © 2019 Allen Davis-Swing. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }

    func updateUIView(_ view: MKMapView, context: Context) {
        
        let coordinate = CLLocationCoordinate2D(
            latitude: 40.5008, longitude: -74.4474)
        let span = MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
    }
}

struct MapView_Preview: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
