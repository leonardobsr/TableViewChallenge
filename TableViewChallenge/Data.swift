//
//  Data.swift
//  TableViewChallenge
//
//  Created by Annderson Packeiser Oreto on 09/04/19.
//  Copyright © 2019 Annderson Packeiser Oreto. All rights reserved.
//

import Foundation

struct Date {
    var day: Int
    var sessions: Session
}

struct Session {
    var title: String
    var sessionName: String
    var company: String
    var time: String
    var hall: String
    var description: String
    var photo: String
    var fullPhoto: String
}

class Data {
    var matrix: [Date] = [Date(day: 15, sessions: Session(title: "Who buys your game?", sessionName: "Session: 5 (20 min)", company: "Darian Lewis - EA Games", time: "14 pm", hall: "Hall 2", description: "Darian has been working as distribution director for EA Games for 7 years. Currently works in the implementation of sales in new media. He is responsible for being in the market of game distribution and with that to raise new business for the company.", photo: "DarianLewisThumb", fullPhoto: "DarianLewisImage"))]
    
    init () { }
    
}
