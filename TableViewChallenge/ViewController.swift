//
//  ViewController.swift
//  TableViewChallenge
//
//  Created by Annderson Packeiser Oreto on 08/04/19.
//  Copyright © 2019 Annderson Packeiser Oreto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.separatorColor = .clear
        tableView.backgroundColor = .clear
        tableView.dataSource = self
        tableView.delegate = self
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SessionCell") as? SessionTableViewCell else {
            return UITableViewCell()
        }
        
//        let cat = cats[indexPath.row]
//
//        cell.catImageView.image = UIImage(named: cat.image)
//        cell.nameLabel.text = cat.name
        cell.sessionCellView.layer.cornerRadius = 25
        cell.sessionCellView.layer.maskedCorners = [.layerMinXMaxYCorner,.layerMinXMinYCorner]
        cell.sessionCellView.backgroundColor = .red
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let cat = cats[indexPath.row]
//        print(cat.name)
    }
}
