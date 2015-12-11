//
//  ViewController.swift
//  11_MagicalRecord
//
//  Created by Andreas Wittmann on 29/11/15.
//  Copyright © 2015 🐼 + 🙉. All rights reserved.
//

import UIKit

class ViewController: UIViewController, NSFetchedResultsControllerDelegate, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

