//
//  Data.swift
//  TableViewChallenge
//
//  Created by Annderson Packeiser Oreto on 09/04/19.
//  Copyright © 2019 Annderson Packeiser Oreto. All rights reserved.
//

import Foundation
import UIKit

enum SessionDay: Int {
    case purple = 15
    case cyan = 16
    case blue = 17
    
    func getColor() -> UIColor {
        switch self {
            case .purple:
                return #colorLiteral(red: 0.2980392157, green: 0.3058823529, blue: 0.6274509804, alpha: 1)
            
            case .cyan:
                return #colorLiteral(red: 0, green: 0.662745098, blue: 0.7294117647, alpha: 1)
            
            case .blue:
                return #colorLiteral(red: 0.1529411765, green: 0.368627451, blue: 0.6039215686, alpha: 1)
        }
    }
    
    func getTimeIcon() -> String {
        switch self {
        case .purple:
            return "purpleTime"
            
        case .cyan:
            return "cyanTime"
            
        case .blue:
            return "blueTime"
        }
    }
    
    func getLocationIcon() -> String {
        switch self {
        case .purple:
            return "purpleLocation"
            
        case .cyan:
            return "cyanLocation"
            
        case .blue:
            return "blueLocation"
        }
    }
    
    func getCalendarIcon() -> String {
        switch self {
        case .purple:
            return "purpleCalendar"
            
        case .cyan:
            return "cyanCalendar"
            
        case .blue:
            return "blueCalendar"
        }
    }
}

struct Session {
    var day: Int
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
    var matrix: [Session] = [Session(day: 15, title: "Who buys your game?", sessionName: "Session: 5 (20 min)", company: "Darian Lewis - EA Games", time: "14 pm", hall: "Hall 2", description: "Darian has been working as distribution director for EA Games for 7 years. Currently works in the implementation of sales in new media. He is responsible for being in the market of game distribution and with that to raise new business for the company.", photo: "DarianLewisThumb", fullPhoto: "DarianLewisImage"), Session(day: 16, title: "Graphics matter?", sessionName: "Session: 12 (45 min)", company: "Lucio Yedlin - Stein ink", time: "10 am", hall: "Hall 1", description: "Lucio works for Stein who is one of the big software developers and works for big companies like adobe and microsoft. Stein works with Nvidea in the improvement and implementation of innovations in the graphic area", photo: "LucioYedlinThumb", fullPhoto: "LucioYedlinImage"), Session(day: 17, title: "The universal language", sessionName: "Session: 1 (25 min)", company: "Paul Ariola - Apple", time: "14 pm", hall: "Hall 3", description: "Paul works for 12 years at Apple and is a leader in deploying deployments along with the department responsible for certification of swift deployments. Paul will talk about how Swift has become a universal tool", photo: "PaulAriolaThumb", fullPhoto: "PaulAriolaImage"), Session(day: 15, title: "Until when will the video last?", sessionName: "Session: 5 (20 min)", company: "Marta Guzan - Youtube", time: "11 am", hall: "Hall 3", description: "Marta has been working at Google for more than 5 years and has been responsible for sectors like Doodles, Keep, Google Notes and currently is responsible for the sector of creators of content on Youtube. What else can we know?", photo: "MartaGuzanThumb", fullPhoto: "MartaGuzanImage"), Session(day: 15, title: "Why did the podcast kill the radio?", sessionName: "Session: 2 (30 min)", company: "Brad Matomo - Spotify", time: "15 pm", hall: "Hall 2", description: "Brad worked in My Space until he went to Spotity, where he became responsible for the implementation of PodCasts and the strategy to foster the creation of new channels and producers of content in the segment.", photo: "BradMatomoThumb", fullPhoto: "BradMatomoImage"), Session(day: 17, title: "Generic funtionality", sessionName: "Session: 9 (50 min)", company: "Bia Trap - Apple", time: "14 pm", hall: "Hall 2", description: "Bia faz parte do time implementações da Apple responsável pela aplicabilidade dos sistemas em diversas ferramentas como Iphone, Mac, watch, airpod. Como funciona o sistema de testes da apple para implementação de novas ideias?", photo: "BiaTrapThumb", fullPhoto: "BiaTrapImage")]
    
    init () { }
    
}
