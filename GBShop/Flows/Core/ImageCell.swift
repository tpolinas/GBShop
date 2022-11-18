//
//  ImageCell.swift
//  GBShop
//
//  Created by Polina Tikhomirova on 18.11.2022.
//

import UIKit

class ImageCell: UITableViewCell {

    @IBOutlet weak var imageProd: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configure(image: UIImage?) {
        imageProd.image = image
    }
    
}

