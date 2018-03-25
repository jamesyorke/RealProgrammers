//
//  Programmer.swift
//  RealProgrammers
//
//  Created by James Yorke on 22/03/2018.
//  Copyright © 2018 james. All rights reserved.
//

import Foundation

struct Programmer {
    let firstName: String
    let lastName: String
    let emacs: Int
    let caffeine: Int
    let rating: Int
    let interviewDate: Date
    let favourite: Bool
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
}
