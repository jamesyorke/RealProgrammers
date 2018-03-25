//
//  ProgrammersListPresenter.swift
//  RealProgrammers
//
//  Created by James Yorke on 22/03/2018.
//  Copyright © 2018 james. All rights reserved.
//

import Foundation

class ProgrammersListPresenter {
    var programmerViewModels: [ProgrammerViewModel] = []
    
    let useCase: ShowProgrammersListUseCase
    
    init(useCase: ShowProgrammersListUseCase) {
        self.useCase = useCase
    }
    
    func viewReady() {
        useCase.showProgrammers()
    }
    
    
}

extension ProgrammersListPresenter {
    
    // ProgrammersTableViewController Presentation Methods
    
    var numberOfRows: Int {
        return programmerViewModels.count
    }
    
    func configure(cell: ProgrammerCellView, forRow row: Int) {
        let programmer = programmerViewModels[row]
        
        cell.display(name: programmer.fullName)
        cell.display(date: programmer.interviewDate.relative())
        cell.display(favourite: programmer.favourite)
    }
}

extension ProgrammersListPresenter: ProgrammersListPresentation {
    
    func present(programmerViewModels: [ProgrammerViewModel]) {
        self.programmerViewModels = programmerViewModels
    }
    
}
