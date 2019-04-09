//
//  ViewController.swift
//  TableViewChallenge
//
//  Created by Annderson Packeiser Oreto on 08/04/19.
//  Copyright © 2019 Annderson Packeiser Oreto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let DATA = Data()
    
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
        return DATA.matrix.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SessionCell") as? SessionTableViewCell else {
            return UITableViewCell()
        }
        
        cell.sessionCellView.layer.cornerRadius = 60
        cell.sessionCellView.layer.maskedCorners = [.layerMinXMaxYCorner,.layerMinXMinYCorner]
        cell.sessionCellView.backgroundColor = #colorLiteral(red: 0.2980392157, green: 0.3058823529, blue: 0.6274509804, alpha: 1)
        cell.sessionImageButton.layer.cornerRadius = 60
//        cell.sessionImageView.image = UIImage(named: "DorianLewisThumb")
        print(indexPath.row)
        cell.sessionNameLabel.attributedText = labelWithImage(image: "Caminho 22", label: DATA.matrix[indexPath.row].title)
        cell.sessionIdTimeLabel.text = DATA.matrix[indexPath.row].sessionName
        cell.sessionSpeakerJobLabel.text = DATA.matrix[indexPath.row].company
    
        cell.sessionTimeLabel.attributedText = labelWithImage(image: "Agrupar 300", label: DATA.matrix[indexPath.row].time)
        cell.sessionLocalizationLabel.attributedText = labelWithImage(image: "Agrupar 302", label: DATA.matrix[indexPath.row].hall)
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
