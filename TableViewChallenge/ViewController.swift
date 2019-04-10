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
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        let session = DATA.matrix[sender.tag]
        performSegue(withIdentifier: "detailViewSegue", sender: session)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier else { return }
        
        switch identifier {
        case "detailViewSegue":
            let destVC : DetailViewController = segue.destination as! DetailViewController
            destVC.session = sender as? Session
        default:
            break
        }
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DATA.matrix.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "SessionCell") as! SessionTableViewCell
        
        let session = DATA.matrix[indexPath.row]
        
        cell.sessionImageButton.tag = indexPath.row
        cell.sessionKnowMoreButton.tag = indexPath.row
        
        cell.sessionCellView.layer.cornerRadius = 60
        cell.sessionCellView.layer.maskedCorners = [.layerMinXMaxYCorner,.layerMinXMinYCorner]
        cell.sessionCellView.backgroundColor = SessionDay(rawValue: session.day)!.getColor()
        cell.sessionImageButton.layer.cornerRadius = 60
        
        cell.sessionImageButton.setImage(UIImage(named: session.photo), for: .normal)
        cell.sessionNameLabel.attributedText = labelWithImage(image: "Caminho 22", label: session.title)
        cell.sessionIdTimeLabel.text = session.sessionName
        cell.sessionSpeakerJobLabel.text = session.company
    
        cell.sessionTimeLabel.attributedText = labelWithImage(image: "Agrupar 300", label: session.time)
        cell.sessionLocalizationLabel.attributedText = labelWithImage(image: "Agrupar 302", label: session.hall)
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let session = DATA.matrix[indexPath.row]
//        performSegue(withIdentifier: "detailViewSegue", sender: session)
    }
}
