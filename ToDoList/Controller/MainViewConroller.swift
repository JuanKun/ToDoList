//
//  ViewController.swift
//  ToDoList
//
//  Created by Juansyah - on 15/02/20.
//  Copyright © 2020 Juansyah. All rights reserved.
//

import UIKit
import Firebase

enum ThoughtCategory : String {
    case funny = "funny"
    case serious = "serious"
    case crazy = "crazy"
    case popular =  "popular"
}

class MainViewController: UIViewController {

    @IBOutlet private weak var segmentCategory: UISegmentedControl!
    @IBOutlet private weak var tableView: UITableView!
    
    private var thoughts = [Thought]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return thoughts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "thoughtCell", for: indexPath) as? ThoughtTableViewCell else {return UITableViewCell()}
        
        return cell
    }
    
    
    
}

