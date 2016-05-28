//
//  imageViewCell.swift
//  SpotifyDemo
//
//  Created by ALEX CHAVEZ on 5/19/16.
//  Copyright © 2016 Nearsoft. All rights reserved.
//

import UIKit

class imageViewCell: UICollectionViewCell {
    @IBOutlet weak var imageArtist: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    static func reusIdentifier() -> String{
        return "imageViewCell"
    }

}
