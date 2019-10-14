//
//  imageViewController.swift
//  KentRehberi
//
//  Created by Mehmet Turan on 10/14/19.
//  Copyright © 2019 Mehmet Turan. All rights reserved.
//

import UIKit

class imageViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var landmarkLabel: UILabel!
    
    var selectedLandmarkName = ""
    var selectedLandmarkImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        landmarkLabel.text = selectedLandmarkName
        imageView.image = selectedLandmarkImage

        
    }
    

    

}
