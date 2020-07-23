//
//  Reviews.swift
//  Snacktacular
//
//  Created by Jared Spears on 12/11/19.
//  Copyright © 2019 Jared Spears. All rights reserved.
//

import Foundation
import Firebase
import FirebaseFirestore

class Reviews {
    var reviewArray: [Review] = []
    var db: Firestore!
    
    
    init() {
        db = Firestore.firestore()
    }
    
    func loadData(spot:Spot, completed: @escaping () -> ()) {
        guard spot.documentID != "" else {
            return
        }
        db.collection("spots").document(spot.documentID).collection("reviews").addSnapshotListener() { (querySnapshot, error) in
            guard error == nil else {
                print("*** ERROR adding snapshot listener")
                return completed()
            }
            self.reviewArray = []
            for document in querySnapshot!.documents {
                let review = Review(dictionary: document.data())
                review.documentID = document.documentID
                self.reviewArray.append(review)
            }
            completed()
        }
    }
    
    
}

