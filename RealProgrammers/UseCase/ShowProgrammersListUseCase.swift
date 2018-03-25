//
//  ShowProgrammersListUseCase.swift
//  RealProgrammers
//
//  Created by James Yorke on 22/03/2018.
//  Copyright © 2018 james. All rights reserved.
//

import Foundation

// Interactor

class ShowProgrammersListUseCase {
    
    let repository: GenericRepository
    var presenter: ProgrammersListPresentation!
    
    init(withRepository repository: GenericRepository) {
        self.repository = repository
    }
    
    func showProgrammers() {
        // 1. Fetch programmers data
        let programmers = repository.fetchProgrammers()
        
        // 2. Process programmers data
        let programmerViewModels = programmers.map {
            ProgrammerViewModel(programmer: $0)
        }
        
        // 3. Present
        presenter.present(programmerViewModels: programmerViewModels)
        
    }
}





















