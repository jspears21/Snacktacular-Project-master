//
//  Spots.swift
//  Snacktacular
//
//  Created by Jared Spears on 12/8/19.
//  Copyright © 2019 Jared Spears. All rights reserved.
//

import Foundation
import Firebase
import FirebaseFirestore


class Spots {
    var spotArray = [Spot]()
    var db: Firestore!
    
    init() {
        db = Firestore.firestore()
    }
    
    func loadData(completed: @escaping () -> ()) {
        db.collection("spots").addSnapshotListener() { (querySnapshot, error) in
            guard error == nil else {
                print("*** ERROR adding snapshot listener")
                return completed()
            }
            self.spotArray = []
            for document in querySnapshot!.documents {
                let spot = Spot(dictionary: document.data())
                spot.documentID = document.documentID
                self.spotArray.append(spot)
            }
            completed()
        }
    }
    
    
    
}
