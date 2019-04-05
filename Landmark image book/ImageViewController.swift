//
//  ImageViewController.swift
//  Landmark image book
//
//  Created by Peter Jenkin on 05/04/2019.
//  Copyright © 2019 Peter Jenkin. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var selectedLandmarkName = ""
    var selectedLandmarkImage = UIImage()
    // 2 variables corresponding with similar variables in other ViewController
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = selectedLandmarkName
        imageView.image = selectedLandmarkImage

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
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
