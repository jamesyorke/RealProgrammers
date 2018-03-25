//
//  ProgrammersRepo.swift
//  RealProgrammers
//
//  Created by James Yorke on 22/03/2018.
//  Copyright © 2018 james. All rights reserved.
//

import Foundation

class ProgrammersRepository {
    
    var programmers: [Programmer]
    
    init() {
        let james = Programmer(firstName: "James", lastName: "Yorke", emacs: 2, caffeine: 100, rating: 100000, interviewDate: Date(), favourite: true)
        let shabna = Programmer(firstName: "Shabna", lastName: "Zaheer", emacs: 4, caffeine: 1, rating: 1, interviewDate: Date(), favourite: false)
        
        programmers = [james, shabna]
    }
}

extension ProgrammersRepository: GenericRepository {
    func fetchProgrammers() -> [Programmer] {
        return programmers
    }
}










