//
//  SimpsonsClass.swift
//  SimpsonBook
//
//  Created by İrem Akgoz on 15.05.2022.
//  Copyright © 2022 Irem Akgoz. All rights reserved.
//

import Foundation
import UIKit

class Simpsons {
    
    var name : String
    var job : String
    var image = UIImage()
    
    
    init(nameInit : String, jobInit : String, imageInit : UIImage) {
        name = nameInit
        job = jobInit
        image = imageInit
        
    }
}
