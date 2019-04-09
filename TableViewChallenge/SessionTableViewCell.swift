//
//  SessionTableViewCell.swift
//  TableViewChallenge
//
//  Created by Leonardo Reis on 08/04/19.
//  Copyright © 2019 Annderson Packeiser Oreto. All rights reserved.
//

import UIKit

class SessionTableViewCell: UITableViewCell {
    
    @IBOutlet weak var sessionContentView: UIView!
    @IBOutlet weak var sessionCellView: UIView!
    @IBOutlet weak var sessionImageView: UIImageView!
    @IBOutlet weak var sessionNameLabel: UILabel!
    @IBOutlet weak var sessionSpeakerJobLabel: UILabel!
    @IBOutlet weak var sessionIdTimeLabel: UILabel!
    @IBOutlet weak var sessionTimeLabel: UILabel!
    @IBOutlet weak var sessionLocalizationLabel: UILabel!
    @IBOutlet weak var sessionInterestButton: UIButton!
    @IBOutlet weak var sessionKnowMoreButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
}
