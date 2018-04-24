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

  // set up your UI here instead
  open func render() {
    
  }

  override open func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
      // Dispose of any resources that can be recreated.
  }
  

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
