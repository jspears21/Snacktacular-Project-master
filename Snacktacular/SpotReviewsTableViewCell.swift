//
//  SpotReviewsTableViewCell.swift
//  Snacktacular
//
//  Created by Jared Spears on 12/02/19.
//  Copyright © 2019 Jared Spears. All rights reserved.
//

import UIKit

class SpotReviewsTableViewCell: UITableViewCell {

    @IBOutlet weak var reviewTitleLabel: UILabel!
    @IBOutlet weak var reviewTextLabel: UILabel!
    
    @IBOutlet var starImageCollection: [UIImageView]!
    
    var review: Review! {
        didSet {
            reviewTextLabel.text = review.text
            reviewTitleLabel.text = review.title
            for starImage in starImageCollection {
                 let image = UIImage(named: (starImage.tag < review.rating ? "star-filled": "star-empty"  ))
                starImage.image = image
            }
           
            
        }
    }
    
}
