
//
//  CustomCell.swift
//  MultipleCustomCellTV
//
//  Created by Srans022019 on 26/05/20.
//  Copyright © 2020 vikas. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    
    static let identifier = "CustomCell"
    
    static func nib() -> UINib {
       return UINib(nibName: "CustomCell", bundle: nil)
    }
    
    public func configure(myImage : String, myLabels: String){
        
        myImageView.image = UIImage(named: myImage)
        myLabel.text = myLabels
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        myLabel.numberOfLines = 0
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
