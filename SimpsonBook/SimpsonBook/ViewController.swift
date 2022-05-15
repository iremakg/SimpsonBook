//
//  ViewController.swift
//  SimpsonBook
//
//  Created by İrem Akgoz on 15.05.2022.
//  Copyright © 2022 Irem Akgoz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var mySimpsons = [Simpsons]()
    var chosenSimpson  : Simpsons?


    @IBOutlet weak var tableView: UITableView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        let hommer = Simpsons(nameInit: "hommer simson", jobInit: "nuclear safety", imageInit: UIImage(named: "hommer simpson")!)
        
        let marge = Simpsons(nameInit: "marge simpson", jobInit: "housewife", imageInit: UIImage(named: "Marge Simpson")!)
        
        
        let bart = Simpsons(nameInit: "bart simson", jobInit: "student", imageInit: UIImage(named: "bart simpson")!)
        
        let lisa = Simpsons(nameInit: "lisa simson", jobInit: "student", imageInit: UIImage(named: "Lisa Simpson")!)
        
        let maggie = Simpsons(nameInit: "maggie simson", jobInit: "baby", imageInit: UIImage(named: "maggie simpson")!)
        
        
        
        mySimpsons.append(hommer)
        mySimpsons.append(bart)
        mySimpsons.append(lisa)
        mySimpsons.append(maggie)
        mySimpsons.append(marge)

        
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpsons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = mySimpsons[indexPath.row].name
        return cell
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpson = mySimpsons[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! detailsVC
            destinationVC.selectedSimpson = chosenSimpson
        }
    }


}

