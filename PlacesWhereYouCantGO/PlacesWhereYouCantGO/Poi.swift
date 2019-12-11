//
//  Poi.swift
//  PlacesWhereYouCantGO
//
//  Created by Remy Jacquet on 04/12/2019.
//  Copyright © 2019 Erwan Bouriau. All rights reserved.
//

import Foundation
import MapKit
import UIKit

//Classe point avec un titre pour son nom et des coordonnées
class Poi: NSObject, MKAnnotation {
    var title: String?
    var coordinate: CLLocationCoordinate2D
    
    init(title: String, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.coordinate = coordinate
    }
}
