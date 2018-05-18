//
//  GenericCollectionViewController.swift
//  GenericViewControllerKit
//
//  Created by Dean Silfen on 5/18/18.
//  Copyright © 2018 Dean Silfen. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class GenericCollectionViewController<State>: UICollectionViewController, StatefulView {
    /// `state` a generic property that should
    /// be used to determine the behavior and look
    /// of the tableView. When a new model is set,
    /// the tableView will be reloaded.
    open var state: State? {
        didSet {
            self.collectionView?.reloadData()
        }
    }
    
    /// `render()` should be overriden and code that binds
    /// the UI to the new data should be placed here.
    /// This method will be called when the view loads,
    /// and every subseqeunt time when a new model is set.
    func render() {
        // #warning Incomplete implementation, override to update your view when the model changes
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
