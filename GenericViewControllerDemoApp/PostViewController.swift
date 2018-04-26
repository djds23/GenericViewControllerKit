//
//  PostViewController.swift
//  GenericViewControllerDemoApp
//
//  Created by Dean Silfen on 4/25/18.
//  Copyright © 2018 Dean Silfen. All rights reserved.
//

import UIKit
import GenericViewController

class PostViewController: GenericViewController<Post> {
    @IBOutlet weak var stackView: UIStackView!
    lazy var titleLabel = { () -> UILabel in
        return UILabel()
    }()

    lazy var bodyLabel = { () -> UILabel in
        return UILabel()
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.stackView.addArrangedSubview(self.titleLabel)
        self.stackView.addArrangedSubview(self.bodyLabel)
        self.render()
    }
    
    override func render() {
        if let post = self.model {
            self.view.backgroundColor = post.liked ? UIColor(red:0.97, green:0.91, blue:0.98, alpha:1.0) : UIColor.white
            self.titleLabel.text = post.title
            self.bodyLabel.text = post.body
        } else {
            self.titleLabel.text = "No Post"
            self.bodyLabel.text = ""
            self.view.backgroundColor = UIColor.white
        }
    }

    @IBAction func toggleLike(_ sender: Any) {
    }
}
