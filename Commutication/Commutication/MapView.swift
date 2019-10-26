//
//  MapView.swift
//  Commutication
//
//  Created by Allen Davis-Swing on 10/21/19.
//  Copyright © 2019 Allen Davis-Swing. All rights reserved.
//

import SwiftUI
import MapKit
import CoreLocation

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }

    func updateUIView(_ view: MKMapView, context: Context) {
        
        let myCoords = CLLocationManager()
        myCoords.requestAlwaysAuthorization()
        myCoords.startUpdatingLocation()
        
        print(myCoords.location?.coordinate.latitude ?? "not working")
        
        let coordinate = CLLocationCoordinate2D(
            latitude: myCoords.location?.coordinate.latitude ?? 40.5008, longitude: myCoords.location?.coordinate.longitude ?? -74.4474)
        
        
        
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
    }
}

struct MapView_Preview: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
