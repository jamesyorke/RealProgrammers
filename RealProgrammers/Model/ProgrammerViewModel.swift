//
//  ProgrammerViewModel
//  RealProgrammers
//
//  Created by James Yorke on 22/03/2018.
//  Copyright © 2018 james. All rights reserved.
//

import Foundation

struct ProgrammerViewModel {
    let fullName: String
    let interviewDate: Date
    let favourite: Bool
}

extension ProgrammerViewModel {
    
    init(programmer: Programmer) {
        fullName = programmer.fullName
        interviewDate = programmer.interviewDate
        favourite = programmer.favourite
    }
    
}
