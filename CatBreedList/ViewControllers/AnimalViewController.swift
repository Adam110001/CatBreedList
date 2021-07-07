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
        
        searchInternet.setTitle("Read More", for: .normal)
        searchInternet.backgroundColor = .white
        searchInternet.setTitleColor(.black, for: .normal)
        searchInternet.layer.cornerRadius = 12
        searchInternet.layer.masksToBounds = true
        searchInternet.titleLabel?.font = .systemFont(ofSize: 15, weight: .bold)
        
        self.title = KeyVariables.MyVariables.cats[KeyVariables.MyVariables.index].name
        desParLabel.text = KeyVariables.MyVariables.cats[KeyVariables.MyVariables.index].welcomeDescription
        
        let url = URL(string: KeyVariables.MyVariables.cats[KeyVariables.MyVariables.index].image!.url!)
        let data = try? Data(contentsOf: url!)
        imageView.image = UIImage(data: data!)
        
    }
    
    //MARK - Search Button function
    @IBAction func searchIntenetAction(_ sender: Any) {
        guard let url = URL(string: KeyVariables.MyVariables.cats[KeyVariables.MyVariables.index].wikipediaURL!) else {
            return
        }
        
        let vc = SFSafariViewController(url: url)
        present(vc, animated: true, completion: nil)
    }
}
