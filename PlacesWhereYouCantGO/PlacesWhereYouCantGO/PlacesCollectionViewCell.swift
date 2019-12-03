//
//  PlacesCollectionViewCell.swift
//  PlacesWhereYouCantGO
//
//  Created by Erwan Bouriau on 03/12/2019.
//  Copyright © 2019 Erwan Bouriau. All rights reserved.
//

import UIKit

class PlacesCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var placeImage: UIImageView!
    @IBOutlet var placeName: UILabel!
    @IBOutlet var placeCountry: UILabel!
    @IBOutlet var placeDistance: UILabel!
    @IBOutlet var placePrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func displayContent(title: String) {
        placeName.text = title
        print(title)
    }

}

