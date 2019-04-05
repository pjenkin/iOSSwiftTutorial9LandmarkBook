//
//  ViewController.swift
//  Landmark image book
//
//  Created by Peter Jenkin on 05/04/2019.
//  Copyright © 2019 Peter Jenkin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    // NB manually subclass/inherit ViewController also from UITableViewDelegate, UITableViewDataSource
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.dataSource = self
        tableView.delegate = self
        // self so as to have more options when subclassing tableview functions - eg numberOfRowsInSection and cellForRowAt
        
    }

// delegate functions for table - see subclassing of ViewController
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10       // tell table to have 10 rows (count 'em)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()    // instantiate a cell
        cell.textLabel?.text = "Checking cell code" // check rendering ok
        return cell     // this cell for table row(s)
    }

   // override func didReceiveMemoryWarning() {
     //   super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    //}


}

