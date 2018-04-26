//
//  GenericTableViewController.swift
//  GenericViewController
//
//  Created by Dean Silfen on 4/26/18.
//  Copyright © 2018 Dean Silfen. All rights reserved.
//

import UIKit

open class GenericTableViewController<ModelType>: UITableViewController {
    open var model: ModelType? {
        didSet {
            self.tableView.reloadData()
        }
    }
    open override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    open override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    open override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    open override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
}
