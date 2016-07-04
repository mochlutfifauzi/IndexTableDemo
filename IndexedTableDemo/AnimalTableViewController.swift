//
//  AnimalTableViewController.swift
//  IndexedTableDemo
//
//  Created by Simon Ng on 17/11/14.
//  Copyright (c) 2014 AppCoda. All rights reserved.
//

import UIKit

class AnimalTableViewController: UITableViewController {
    
    let animals: [String: [String]] = ["B": ["Bear", "Black Swan", "Buffalo"],
                                       "C": ["Camel", "Cockatoo"],
                                       "D": ["Dog", "Donkey"],
                                       "E": ["Emu"],
                                       "G": ["Giraffe", "Greater Rhea"],
                                       "H": ["Hippopotamus", "Horse"],
                                       "K": ["Koala"],
                                       "L": ["Lion", "Llama"],
                                       "M": ["Manatus", "Meerkat"],
                                       "P": ["Panda", "Peacock", "Pig", "Platypus", "Polar Bear"],
                                       "R": ["Rhinoceros"],
                                       "S": ["Seagull"],
                                       "T": ["Tasmania Devil"],
                                       "W": ["Whale", "Whale Shark", "Wombat"]]
    
    var animalDict = [String: [String]]()
    var animalSection = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows in the section.
        return animals.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) 

        // Configure the cell...
        cell.textLabel?.text = animals[indexPath.row]
        
        // Convert the animal name to lower case and 
        // then replace all occurences of a space with an underscore
        let imageFilename = animals[indexPath.row].lowercaseString.stringByReplacingOccurrencesOfString(" ", withString: "_", options: [], range: nil)
        cell.imageView?.image = UIImage(named: imageFilename)

        return cell
    }
    

}
