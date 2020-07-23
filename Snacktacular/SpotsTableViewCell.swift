//
//  SpotsListTableViewCell.swift
//  Snacktacular
//
//  Created by Jared Spears on 12/02/19.
//  Copyright © 2019 Jared Spears. All rights reserved.
//

import UIKit
import CoreLocation

class SpotsTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    
    var currentLocation: CLLocation!
    var spot: Spot!
    
    
    
    func configureCell(spot: Spot) {
        nameLabel.text = spot.name
        // calculate distance
        guard let currentLocation = currentLocation else {
            return
        }
        let distanceInMeters = currentLocation.distance(from: spot.location)
        let distanceString = "Distance: \((distanceInMeters * 0.00062137).roundTo(places: 2))"
        distanceLabel.text = distanceString
    }
    
}
