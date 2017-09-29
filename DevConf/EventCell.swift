//
//  EventCell.swift
//  DevConf
//
//  Created by Derbalil on 2017-09-28.
//  Copyright © 2017 Derbalil. All rights reserved.
//

import UIKit

class EventCell: UITableViewCell {

    @IBOutlet weak var lblTitre: UILabel!
    @IBOutlet weak var lblDetail: UILabel!
    @IBOutlet weak var btnFavori: UIButton!
    
    var estFavori: Bool = false{
        didSet{
            rafraichirAffichage()
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func btnFavoriTapote(_ sender: Any) {
        estFavori = !estFavori
        rafraichirAffichage()
    }
    
    func rafraichirAffichage(){
        if estFavori{
            btnFavori.setImage(UIImage(named:"bookmark-icon-filled"), for: .normal)
        } else{
            btnFavori.setImage(UIImage(named:"bookmark-icon-empty"), for: .normal)
        }
    }
}
