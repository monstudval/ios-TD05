//
//  DetailEventViewController.swift
//  DevConf
//
//  Created by Derbalil on 2017-09-28.
//  Copyright © 2017 Derbalil. All rights reserved.
//

import UIKit

class DetailEventViewController: UIViewController {

    @IBOutlet weak var lblTitre: UILabel!
    @IBOutlet weak var lblHeure: UILabel!
    @IBOutlet weak var lblDuration: UILabel!
    @IBOutlet weak var lblLocation: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    
    var event: Event!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        lblTitre.text = event.title
        lblHeure.text = event.start
        lblDuration.text = "\(event.duration) minutes"
        lblLocation.text = event.location.nom
        lblDescription.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi elementum enim purus. Etiam lobortis sit amet lacus convallis volutpat. Pellentesque fringilla metus turpis. Duis leo sapien, porta semper lacus et, pharetra pretium ex. Duis ullamcorper pretium mi, eu pharetra quam bibendum non. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sodales nisl id turpis pulvinar dapibus."
        
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
