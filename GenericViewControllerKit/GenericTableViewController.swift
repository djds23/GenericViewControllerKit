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
open class GenericTableViewController<State>: UITableViewController, StatefulView {
    
    /// `state` a generic property that should
    /// be used to determine the behavior and look
    /// of the tableView. When a new model is set,
    /// the tableView will be reloaded.
    open var state: State? {
        didSet {
            self.tableView.reloadData()
        }
    }

    /// `render()` should be overriden and code that binds
    /// the UI to the new data should be placed here.
    /// This method will be called when the view loads,
    /// and every subseqeunt time when a new model is set.
    func render() {
        // #warning Incomplete implementation, override to update your view when the model changes
    }

    open override func viewDidLoad() {
        super.viewDidLoad()
        self.render()
    }

    open override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
