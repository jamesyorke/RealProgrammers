//
//  GenericRepository.swift
//  RealProgrammers
//
//  Created by James Yorke on 22/03/2018.
//  Copyright © 2018 james. All rights reserved.
//

import Foundation

protocol GenericRepository {
    func fetchProgrammers() -> [Programmer]
}
