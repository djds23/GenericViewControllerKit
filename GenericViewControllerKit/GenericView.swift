//
//  GenericView.swift
//  GenericViewControllerKit
//
//  Created by Dean Silfen on 5/18/18.
//  Copyright © 2018 Dean Silfen. All rights reserved.
//

import UIKit

class GenericView<State>: UIView, StatefulView {
    override func layoutSubviews() {
        self.render()
    }

    /// `state` a generic property that should
    /// contain data needed for the `render`
    /// function to bind data to the view.
    open var state: State? {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    /// `render()` should be overriden and code that binds
    /// the UI to the new data should be placed here.
    /// This method will be called when the view loads,
    /// and every subseqeunt time when a new model is set.
    open func render() {
        // #warning Incomplete implementation, override to update your view when the model changes
    }
}
