//
//  ImageTVCell.swift
//  MultipleCustomCellTV
//
//  Created by Srans022019 on 26/05/20.
//  Copyright © 2020 vikas. All rights reserved.
//

import UIKit

class ImageTVCell: UITableViewCell {
    
    static let identifier = "ImageTVCell"
    
    private let myImageView: UIImageView = {
        let myImage = UIImageView()
        
        return myImage
    }()
    
    public func config(myImages: String) {
        
        contentView.addSubview(myImageView)
        myImageView.contentMode = .scaleAspectFill
        myImageView.clipsToBounds = true
        myImageView.image = UIImage(named: myImages)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
       myImageView.frame = CGRect(x: 10, y: 10, width: contentView.bounds.width - 20, height: contentView.bounds.height - 10)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
