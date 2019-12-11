//
//  CardViewController.swift
//  PlacesWhereYouCantGO
//
//  Created by Erwan Bouriau on 11/12/2019.
//  Copyright © 2019 Erwan Bouriau. All rights reserved.
//

import UIKit

class CardViewController: UIViewController {
    
    @IBOutlet weak var handleArea: UIView!
    
    @IBOutlet weak var placeName: UILabel!
    @IBOutlet weak var placeCountry: UILabel!
    @IBOutlet weak var placeDistance: UILabel!
    @IBOutlet weak var placePrice: UILabel!
    @IBOutlet weak var placeDesc: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func displayContent( title: String, country: String, distance: Int, price: Double, desc: String) {
        placeName.text = title
        placeCountry.text = country
        placeDesc.text = desc
        if (distance < 1000) {
            placeDistance.text = String(distance) + " m"
        }
        else {
            placeDistance.text = String(distance/1000) + " km"
        }
        placePrice.text = String(price) + " €"
    }

}
