//
//  PostsTableViewController.swift
//  GenericViewControllerDemoApp
//
//  Created by Dean Silfen on 4/25/18.
//  Copyright © 2018 Dean Silfen. All rights reserved.
//

import UIKit
import GenericViewController

class PostsTableViewController: GenericTableViewController<[Post]> {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.model = [
            Post(
                title: "Swift is Fun",
                body: "I like writing swift because it has a pleasant type system",
                liked: false
            ),
            Post(
                title: "Swift is boring",
                body: "Swift is boring because the type system expresses concepts too clearly",
                liked: true
            )
        ]
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "reuseIdentifier")
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.model?.count ?? 0
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        guard let post = self.model?[indexPath.row] else {
            return cell
        }

        cell.textLabel?.text = post.title
        cell.backgroundColor = post.liked ? UIColor(red:0.97, green:0.91, blue:0.98, alpha:1.0) : UIColor.white
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let post = self.model?[indexPath.row] else {
            return
        }
        let postViewController = PostViewController(nibName: "PostViewController", bundle: Bundle.main)
        self.navigationController?.pushViewController(postViewController, animated: true)
        postViewController.model = post
        postViewController.delegate = self
    }
}

extension PostsTableViewController: PostViewControllerDelegate {
    func postViewController(postViewController: PostViewController, didToggleLikeFor post: Post) {
        let index = self.model?.index { (foundPost) -> Bool in
            foundPost == post
        }
        guard let i = index else {
            return
        }
        self.model?.remove(at: i)
        let newPost = Post(
            title: post.title,
            body: post.body,
            liked: !post.liked
        )
        self.model = (self.model ?? []) + [newPost]
        postViewController.model = newPost
    }
}
