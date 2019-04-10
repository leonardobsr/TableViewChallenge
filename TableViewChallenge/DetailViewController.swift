//
//  DetailViewController.swift
//  TableViewChallenge
//
//  Created by Leonardo Reis on 10/04/19.
//  Copyright © 2019 Annderson Packeiser Oreto. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var session: Session! = nil
    
    @IBOutlet weak var sessionNameBackgroundView: UIView!
    @IBOutlet weak var sessionNameLabel: UILabel!
    @IBOutlet weak var sessionIdTimeLabel: UILabel!
    @IBOutlet weak var sessionSpeakerJobLabel: UILabel!
    @IBOutlet weak var sessionTimeLocationLabel: UILabel!
    @IBOutlet weak var sessionDescriptionLabel: UILabel!
    @IBOutlet weak var sessionImageView: UIImageView!
    @IBOutlet weak var sessionDayButton: UIButton!
    @IBOutlet weak var sessionBackButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // sessionNameBackgroundView
        sessionNameLabel.attributedText = labelWithImage(image: "Caminho 22", label: session.title)
        sessionIdTimeLabel.text = session.sessionName
        sessionSpeakerJobLabel.text = session.company
        
        let fullString = NSMutableAttributedString(string: "")
        fullString.append(labelWithImage(image: "Agrupar 300", label: session.time))
        fullString.append(NSAttributedString(string: " "))
        fullString.append(labelWithImage(image: "Agrupar 302", label: session.hall))
        sessionTimeLocationLabel.attributedText = fullString
        sessionDescriptionLabel.text = session.description
        sessionImageView.image = UIImage(named: session.fullPhoto)
        sessionDayButton.titleLabel?.text = String(session.day)
    }
    
    @IBAction func backButton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
