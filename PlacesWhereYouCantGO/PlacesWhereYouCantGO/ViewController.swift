//
//  ViewController.swift
//  PlacesWhereYouCantGO
//
//  Created by Erwan Bouriau on 03/12/2019.
//  Copyright © 2019 Erwan Bouriau. All rights reserved.
//

import UIKit
import CoreLocation


class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, CLLocationManagerDelegate {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var navBar: UINavigationBar!
    
    let placeApi = PlacesApi()
    var places: [Place]?
    var locationManager = CLLocationManager()
//    var distance: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.register(UINib(nibName: "PlacesCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "placesCollectionViewCell")
        
        self.title = "Places where you can't go"
                
        places = placeApi.getLieux()
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    
    }
    
    @IBAction func showMap() {
        let mapViewController = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "mapViewController") as? MapViewController
        self.navigationController?.pushViewController(mapViewController!, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return places?.count ?? 0
       }
       
       func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "placesCollectionViewCell", for: indexPath)
            as! PlacesCollectionViewCell
        if let place = places?[indexPath.row] {
            let distance = distances?[indexPath.row] ?? 0
            let price = ((Double(distance) / 1000.0 * 0.2)*100).rounded()/100
            cell.displayContent(imagesrc: place.image, title: place.title, country: place.pays, distance: distance, price: price, desc: place.desc)
        }
        return cell
       }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
      
        return CGSize(width: UIScreen.main.bounds.width, height: collectionView.frame.height)
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        for cell in collectionView.visibleCells {
            PlaceContext.shared.indexPath = collectionView.indexPath(for: cell)
        }
    }
    
    @IBAction func webSiteAction() {
        if let url = places?[(PlaceContext.shared.indexPath?.row ?? 0)].site {
            UIApplication.shared.open(URL(string: url)!)
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let mescoords = locations[0]
        setDistances(mescoords)
//        let coordinate2d = CLLocationCoordinate2D(latitude: mescoords.coordinate.latitude, longitude: mescoords.coordinate.longitude)
//        let coord = CLLocation(latitude: Double((places?[PlaceContext.shared.indexPath?.row ?? 0].longitude)!), longitude: Double((places?[PlaceContext.shared.indexPath?.row ?? 0].latitude)!))
//        distance = Int(mescoords.distance(from: coord))
    }
    
    var distances: [Int]?
    func setDistances(_ mescoords: CLLocation) {
        distances = [Int]()
        places?.forEach({ (place) in
            let coord = CLLocation(latitude: Double(place.longitude), longitude: Double(place.latitude))
            let distance = Int(mescoords.distance(from: coord))
            distances?.append(distance)
        })
        collectionView.reloadData()
        
    }
}

