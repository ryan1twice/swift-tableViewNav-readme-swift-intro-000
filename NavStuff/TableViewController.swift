//
//  TableViewController.swift
//  NavStuff
//
//  Created by James Campagno on 6/16/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var dirtyDancingSoundtrack: [String] = []
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        generateDirtyDancingSoundtrack()
        
    }
    
    func generateDirtyDancingSoundtrack() {
        
        dirtyDancingSoundtrack = [
            "(I've Had) The Time of My Life",
            "Be My Baby",
            "She's Like the Wind",
            "Hungry Eyes",
            "STAY",
            "Yes",
            "You Don't Own Me",
            "Hey Baby",
            "Overload",
            "Love Is Strange",
            "Where Are You Tonight?",
            "In the Still of the Night"
        ]
        
    }
    
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return dirtyDancingSoundtrack.count
        
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "dirtyCell", for: indexPath)
        
        let song = dirtyDancingSoundtrack[(indexPath as NSIndexPath).row]
        
        cell.textLabel?.text = song
        
        return cell
    }
}
