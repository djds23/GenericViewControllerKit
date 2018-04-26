//
//  GenericTableViewController.swift
//  GenericViewController
//
//  Created by Dean Silfen on 4/26/18.
//  Copyright © 2018 Dean Silfen. All rights reserved.
//

import UIKit

/// A subclass of UITableViewController that leverages swift
/// generics to have a type safe model-view relationship.
open class GenericTableViewController<ModelType>: UITableViewController {
    
    /// `model` a generic property that should
    /// be used to determine the behavior and look
    /// of the tableView. When a new model is set,
    /// the tableView will be reloaded.
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
