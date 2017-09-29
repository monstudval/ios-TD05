//
//  EventsTableViewController.swift
//  DevConf
//
//  Created by Derbalil on 2017-09-27.
//  Copyright © 2017 Derbalil. All rights reserved.
//

import UIKit

class EventsTableViewController: UITableViewController {
    
    let identifiantCellEvt = "cellEvt"
    let identifiantSegueDetail = "segueDetailEvent"
    
    var events:[Event] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        events = Event.tous

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

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return events.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifiantCellEvt, for: indexPath)

        // Configure the cell...
        let index = indexPath.row
        let evt = events[index]
        cell.textLabel?.text = evt.title
        cell.detailTextLabel?.text = "\(evt.location.nom) - \(evt.start) - \(evt.duration) mm"

        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return nil
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        let idSegue = segue.identifier
        if idSegue == identifiantSegueDetail {
            let cellule = sender as? UITableViewCell
            let index = tableView.indexPath(for: cellule!)?.row
            let destination  = segue.destination as? DetailEventViewController
            let eventTapote = events[index!]
            destination?.event = eventTapote
        }
        
    }
    

}
