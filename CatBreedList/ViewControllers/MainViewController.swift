//
//  ViewController.swift
//  CatBreedList
//
//  Created by Adam Dovciak on 06/07/2021.
//

import UIKit

class MainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    final let url = URL(string: "https://api.thecatapi.com/v1/breeds")

    @IBOutlet var backgroundView: UIView!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backgroundView.backgroundColor = .systemGray4
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        downloadJson()
    }
    
    // MARK - JSON function
    func downloadJson() {
        guard let downloadURL = url else { return }
        
        URLSession.shared.dataTask(with: downloadURL) { Data, URLResponse, Error in
            
            guard let Data = Data, Error == nil, URLResponse != nil else {
                print("Something is wrong")
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let downloadedCats = try decoder.decode([Cat].self, from: Data)
                KeyVariables.MyVariables.cats = downloadedCats
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            } catch {
                print("Something went wrong after downloading.")
            }
        }.resume()
    }
    
    // MARK - TableView functions
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return KeyVariables.MyVariables.cats.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        KeyVariables.MyVariables.index = indexPath.row
        
        navigationController?.pushViewController(storyboard?.instantiateViewController(withIdentifier: "AnimalViewController") as! AnimalViewController, animated: true)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CatCell") as? CatCell else {
            return UITableViewCell()
        }
        
        cell.nameBreed.text = KeyVariables.MyVariables.cats[indexPath.row].name
        cell.dateOB.text = KeyVariables.MyVariables.cats[indexPath.row].lifeSpan
        
        return cell
    }
}

