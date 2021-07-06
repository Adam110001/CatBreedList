//
//  AnimalViewController.swift
//  CatBreedList
//
//  Created by Adam Dovciak on 06/07/2021.
//

import UIKit

class AnimalViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var desLabel: UILabel!
    @IBOutlet weak var desParLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = KeyVariables.MyVariables.cats[KeyVariables.MyVariables.index].name
        desLabel.text = KeyVariables.MyVariables.cats[KeyVariables.MyVariables.index].welcomeDescription
    }
}
