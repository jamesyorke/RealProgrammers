//
//  UIDate+RealProgrammers.swift
//  RealProgrammers
//
//  Created by James Yorke on 22/03/2018.
//  Copyright © 2018 james. All rights reserved.
//

import Foundation

extension Date {
    
    func relative(to comparisonDate: Date = Date()) -> String {
        let test = self.compare(comparisonDate)
//        switch self.compare(comparisonDate) {
//        case
//        default:
//            <#code#>
//        }
        return "A long time ago"
    }
}

