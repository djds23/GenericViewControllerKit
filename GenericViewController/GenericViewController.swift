//
//  GenericViewController.swift
//  GenericViewController
//
//  Created by Dean Silfen on 4/24/18.
//  Copyright © 2018 Dean Silfen. All rights reserved.
//

import UIKit

open class GenericViewController<ModelType>: UIViewController {
    open var model: ModelType? {
        didSet {
            self.render()
        }
    }

    override open func viewDidLoad() {
        super.viewDidLoad()
        self.render()
    }

    open func render() {
        // #warning Incomplete implementation, override to update your view when the model changes
    }
}
