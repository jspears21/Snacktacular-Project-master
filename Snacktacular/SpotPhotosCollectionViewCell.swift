//
//  SpotPhotosCollectionViewCell.swift
//  Snacktacular
//
//  Created by Jared Spears on 12/02/19.
//  Copyright © 2019 Jared Spears. All rights reserved.
//

import UIKit

class SpotPhotosCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var photoImageView: UIImageView!
    
    var photo: Photo! {
        didSet {
            photoImageView.image = photo.image
        }
    }
    
}
