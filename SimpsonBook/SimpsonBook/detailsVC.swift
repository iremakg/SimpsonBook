//
//  detailsVC.swift
//  SimpsonBook
//
//  Created by İrem Akgoz on 15.05.2022.
//  Copyright © 2022 Irem Akgoz. All rights reserved.
//

import UIKit

class detailsVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    var selectedSimpson : Simpsons?
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = selectedSimpson?.name
        jobLabel.text = selectedSimpson?.job
        imageView.image = selectedSimpson?.image

        
    }
    

 
}
