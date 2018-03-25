//
//  ProgrammersTableViewController.swift
//  RealProgrammers
//
//  Created by James Yorke on 22/03/2018.
//  Copyright © 2018 james. All rights reserved.
//

import UIKit

class ProgrammersTableViewController: UITableViewController {

    var presenter: ProgrammersListPresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewReady()
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.numberOfRows
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! ProgrammerTableViewCell
        
        presenter.configure(cell: cell, forRow: indexPath.row)
        return cell
    }

}
