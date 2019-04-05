//
//  ViewController.swift
//  Landmark image book
//
//  Created by Peter Jenkin on 05/04/2019.
//  Copyright © 2019 Peter Jenkin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // array for manually loading images
    var landmarkNamesArray = [String]()
    var landmarkImagesArray = [UIImage]()
    
    
    
    // NB manually subclass/inherit ViewController also from UITableViewDelegate, UITableViewDataSource
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // table view setup
        tableView.dataSource = self
        tableView.delegate = self
        // self so as to have more options when subclassing tableview functions - eg numberOfRowsInSection and cellForRowAt
        
        // landmark image array setup
        landmarkNamesArray.append("Great Wall")
        landmarkNamesArray.append("Macchu Picchu")
        landmarkNamesArray.append("Angkor Wat")
        landmarkNamesArray.append("Eiffel Tower")
        landmarkNamesArray.append("Pyramids")
        landmarkNamesArray.append("Taj Mahal")
        
        landmarkImagesArray.append(UIImage(named:"great-wall.jpeg")!)
        landmarkImagesArray.append(UIImage(named:"macchu-picchu.jpeg")!)
        landmarkImagesArray.append(UIImage(named:"angkor-wat.jpeg")!)
        landmarkImagesArray.append(UIImage(named:"eiffel-tower.jpeg")!)
        landmarkImagesArray.append(UIImage(named:"pyramids.jpeg")!)
        landmarkImagesArray.append(UIImage(named:"taj-mahal.jpeg")!)
        
        
    }

// delegate functions for table - see subclassing of ViewController
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNamesArray.count
        // tell table to have e.g. 6 rows for 6 images and names
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()    // instantiate a cell
        // cell.textLabel?.text = "Checking cell code" // check rendering ok
        
        cell.textLabel?.text = landmarkNamesArray[indexPath.row]
        // get appropriate content for *this* cell  https://stackoverflow.com/a/50107220
        return cell     // this cell for table row(s)
    }
    
    // add another delegate, for deletion
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {

        if editingStyle == .delete
        {
            landmarkNamesArray.remove(at: indexPath.row)
            landmarkImagesArray.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableViewRowAnimation.fade)
        }
    }

   // override func didReceiveMemoryWarning() {
     //   super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    //}


}

