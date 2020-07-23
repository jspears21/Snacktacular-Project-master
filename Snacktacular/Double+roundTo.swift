//
//  Double+roundTo.swift
//  Snacktacular
//
//  Created by Jared Spears on 12/10/19.
//  Copyright © 2019 Jared Spears. All rights reserved.
//

import Foundation

extension Double {
    
    func roundTo(places: Int) -> Double {
        let tenToPower = pow(10.0, Double((places >= 0 ? places: 0 )))
        let roundedValue = (self * tenToPower).rounded() / tenToPower
        return roundedValue
    }
    
    
    
}
