//
//  MapViewController.swift
//  PlacesWhereYouCantGO
//
//  Created by Remy Jacquet on 04/12/2019.
//  Copyright © 2019 Erwan Bouriau. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    @IBOutlet weak var map: MKMapView!
    //var latitudeInit: Double = 37.971538
    //var longitudeInit: Double = 23.725751
    //var coordinateInit :  CLLocationCoordinate2D {
    //return CLLocationCoordinate2D(latitude: latitudeInit, longitude: longitudeInit)
    //}
    var locationManager = CLLocationManager()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        //let coordinateInit = places[(indexPath?.row ?? 0)]
        let span = MKCoordinateSpan(latitudeDelta: 5, longitudeDelta: 5)
        let region = MKCoordinateRegion(center: coordinateInit, span: span)
        map.setRegion(region, animated: true)
        map.delegate = self as! MKMapViewDelegate
        let acropole = Poi(title: "Acropole", coordinate: coordinateInit)
        map.addAnnotation(acropole)
        
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let mescoords = locations[0]
        let coordinate2d = CLLocationCoordinate2D(latitude: mescoords.coordinate.latitude, longitude: mescoords.coordinate.longitude)
        let monpoint = Poi(title: "Ma position", coordinate: coordinate2d)
        let coord = CLLocation(latitude: latitudeInit, longitude: longitudeInit)
        let distance = mescoords.distance(from: coord) / 1000
        map.addAnnotation(monpoint)
    }
}
