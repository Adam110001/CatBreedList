//
//  Cat.swift
//  CatBreedList
//
//  Created by Adam Dovciak on 06/07/2021.
//

import UIKit

class CatCell: UITableViewCell {

    @IBOutlet weak var nameBreed: UILabel!
    @IBOutlet weak var dateOB: UILabel!
    @IBOutlet weak var catImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
