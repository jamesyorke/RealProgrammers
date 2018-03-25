//
//  ProgrammerCellView.swift
//  RealProgrammers
//
//  Created by James Yorke on 22/03/2018.
//  Copyright © 2018 james. All rights reserved.
//

import Foundation

protocol ProgrammerCellView {
    func display(name: String)
    func display(date: String)
    func display(favourite: Bool)
}
