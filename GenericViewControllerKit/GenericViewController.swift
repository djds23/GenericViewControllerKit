//
//  GenericViewController.swift
//  GenericViewController
//
//  Created by Dean Silfen on 4/24/18.
//  Copyright © 2018 Dean Silfen. All rights reserved.
//

import UIKit

/// A subclass of UIViewController that leverages swift
/// generics to have a type safe model-view relationship.
open class GenericViewController<ModelType>: UIViewController {

    /// `model` a generic property that should
    /// contain data needed for the `render`
    /// function to bind data to the view.
    open var model: ModelType? {
        didSet {
            self.render()
        }
    }

    /// Hook to call `render()` on
    /// initial load.
    ///
    /// ### Subclass Note
    ///
    /// If you override `viewDidLoad` you should
    /// call `super`. You do not need to call `render()`
    /// in your subclassed `viewDidLoad` since it is
    /// called by the superclass.
    override open func viewDidLoad() {
        super.viewDidLoad()
        self.render()
    }

    /// `render()` should be overriden and code that binds
    /// the UI to the new data should be placed here.
    /// This method will be called when the view loads,
    /// and every subseqeunt time when a new model is set.
    open func render() {
        // #warning Incomplete implementation, override to update your view when the model changes
    }
}
