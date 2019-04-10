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
    @IBOutlet weak var sessionDescriptionView: UIView!
    @IBOutlet weak var sessionDescriptionLabel: UILabel!
    @IBOutlet weak var sessionImageView: UIImageView!
    @IBOutlet weak var sessionDayButton: UIButton!
    @IBOutlet weak var sessionSignupButton: UIButton!
    @IBOutlet weak var sessionBackButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // sessionNameBackgroundView
        sessionNameBackgroundView.layer.cornerRadius = 15
        sessionNameBackgroundView.backgroundColor = SessionDay(rawValue: session.day)!.getColor()
        sessionNameLabel.attributedText = labelWithImage(image: "Caminho 22", label: session.title)
        sessionIdTimeLabel.text = session.sessionName
        sessionSpeakerJobLabel.text = session.company
        
        let fullString = NSMutableAttributedString(string: "")
        fullString.append(labelWithImage(image: SessionDay(rawValue: session.day)!.getTimeIcon(), label: session.time))
        fullString.append(NSAttributedString(string: " "))
        fullString.append(labelWithImage(image: SessionDay(rawValue: session.day)!.getLocationIcon(), label: session.hall))
        sessionTimeLocationLabel.attributedText = fullString
        
        sessionDescriptionView.layer.cornerRadius = 60
        sessionDescriptionView.backgroundColor = SessionDay(rawValue: session.day)!.getColor()
        sessionDescriptionLabel.text = session.description
        
        sessionImageView.image = UIImage(named: session.fullPhoto)
        
        sessionDayButton.setBackgroundImage(UIImage(named: SessionDay(rawValue: session.day)!.getCalendarIcon()), for: .normal)
        sessionDayButton.setTitleColor(SessionDay(rawValue: session.day)!.getColor(), for: .normal)
        sessionDayButton.setTitle(String(session.day), for: .normal)
        
        sessionSignupButton.layer.cornerRadius = 15
        sessionSignupButton.backgroundColor = SessionDay(rawValue: session.day)!.getColor()
        
        sessionBackButton.layer.cornerRadius = 15
        sessionBackButton.backgroundColor = SessionDay(rawValue: session.day)!.getColor()
    }
    
    @IBAction func backButton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
