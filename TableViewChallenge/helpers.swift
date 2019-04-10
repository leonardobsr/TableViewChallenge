//
//  helpers.swift
//  TableViewChallenge
//
//  Created by Leonardo Reis on 10/04/19.
//  Copyright © 2019 Annderson Packeiser Oreto. All rights reserved.
//

import UIKit

func labelWithImage(image: String, label: String) -> NSAttributedString {
    let fullString = NSMutableAttributedString(string: "")
    let image1Attachment = NSTextAttachment()
    image1Attachment.image = UIImage(named: image)
    let image1String = NSAttributedString(attachment: image1Attachment)
    fullString.append(image1String)
    fullString.append(NSAttributedString(string: " " + label))
    return fullString
}
