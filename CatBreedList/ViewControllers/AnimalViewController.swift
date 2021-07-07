//
//  AnimalViewController.swift
//  CatBreedList
//
//  Created by Adam Dovciak on 06/07/2021.
//

import UIKit
import SafariServices

class AnimalViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var desLabel: UILabel!
    @IBOutlet weak var desParLabel: UILabel!
    @IBOutlet weak var searchInternet: UIButton!
    @IBOutlet var background: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        background.backgroundColor = .systemGray4
        
        self.title = KeyVariables.MyVariables.cats[KeyVariables.MyVariables.index].name
        desParLabel.text = KeyVariables.MyVariables.cats[KeyVariables.MyVariables.index].welcomeDescription
    }
    
    @IBAction func searchIntenetAction(_ sender: Any) {
        guard let url = URL(string: KeyVariables.MyVariables.cats[KeyVariables.MyVariables.index].wikipediaURL!) else {
            return
        }
        
        let vc = SFSafariViewController(url: url)
        present(vc, animated: true, completion: nil)
    }
}
