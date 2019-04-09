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
        cell.sessionCellView.layer.cornerRadius = 60
        cell.sessionCellView.layer.maskedCorners = [.layerMinXMaxYCorner,.layerMinXMinYCorner]
        cell.sessionCellView.backgroundColor = #colorLiteral(red: 0.2980392157, green: 0.3058823529, blue: 0.6274509804, alpha: 1)
        cell.sessionImageButton.layer.cornerRadius = 60
//        cell.sessionImageView.image = UIImage(named: "DorianLewisThumb")
        cell.sessionNameLabel.attributedText = labelWithImage(image: "Caminho 22", label: "Who buys your game?")
        cell.sessionIdTimeLabel.text = "Session: 5 (20 min)"
        cell.sessionSpeakerJobLabel.text = "Darian Lewis - EA Games"
    
        cell.sessionTimeLabel.attributedText = labelWithImage(image: "Agrupar 300", label: "14 pm")
        cell.sessionLocalizationLabel.attributedText = labelWithImage(image: "Agrupar 302", label: "Hall 2")
        cell.sessionKnowMoreButton.titleLabel?.text = "know more"
        return cell
    }
    
    func labelWithImage(image: String, label: String) -> NSAttributedString {
        let fullString = NSMutableAttributedString(string: "")
        let image1Attachment = NSTextAttachment()
        image1Attachment.image = UIImage(named: image)
        let image1String = NSAttributedString(attachment: image1Attachment)
        fullString.append(image1String)
        fullString.append(NSAttributedString(string: " " + label))
        return fullString
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let cat = cats[indexPath.row]
//        print(cat.name)
    }
}
