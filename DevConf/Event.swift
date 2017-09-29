//
//  Event.swift
//  DevConf
//
//  Created by Derbalil on 2017-09-27.
//  Copyright © 2017 Derbalil. All rights reserved.
//

import Foundation
struct Event{
    var title: String
    var location: Room
    var start: String
    var duration: Int
    
    static let tous: [Event] = [
        Event(title: "Petit déjeuner", location: .atrium, start: "08:00", duration: 60),
        Event(title: "Développeurs, développeuses", location: .amphi, start: "09:00", duration: 90),
        Event(title: "Atelier: Quelles Classes !", location: .salon, start: "10:45", duration: 60),
        Event(title: "Déjeuner", location: .atrium, start: "12:00", duration: 60)
        ]
}

enum Room{
    case atrium
    case salon
    case amphi
    
    var nom:String{
        switch self {
        case .atrium:
            return "Atrium"
        case .salon:
            return "Salon"
        case .amphi:
            return "Amphithéâtre"
            
        }
    }
}

