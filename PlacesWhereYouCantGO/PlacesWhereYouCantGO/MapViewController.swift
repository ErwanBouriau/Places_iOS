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

let placeApi = PlacesApi()
var places: [Place]?

class MapViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    @IBOutlet weak var map: MKMapView!
    var locationManager = CLLocationManager()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Récupération de l'api
        places = placeApi.getLieux()
        
        //Initialisation des coordonnées pour afficher la map
        let currentRow = PlaceContext.shared.indexPath?.row ?? 0
        let currentLatitude = Double((places?[currentRow].longitude)!)
        let currentLongitude = Double((places?[currentRow].latitude)!)
        let currentcoordinate = CLLocationCoordinate2D(latitude: currentLatitude, longitude: currentLongitude)
        let span = MKCoordinateSpan(latitudeDelta: 9, longitudeDelta: 9)
        let region = MKCoordinateRegion(center: currentcoordinate, span: span)
        
        map.setRegion(region, animated: true)
        map.delegate = self as! MKMapViewDelegate
        
        //Création du point sur la map localisé sur le monument où l'on est
        let point = Poi(title: (places?[currentRow].title)!, coordinate: currentcoordinate)
        map.addAnnotation(point)
        
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
    }

    //Fonction créant un point sur ma localisation
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let mescoords = locations[0]
        let coordinate2d = CLLocationCoordinate2D(latitude: mescoords.coordinate.latitude, longitude: mescoords.coordinate.longitude)
        let monpoint = Poi(title: "Ma position", coordinate: coordinate2d)
        map.addAnnotation(monpoint)
    }
}
