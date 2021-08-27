//  Objecto.swift
//  EveryThingRPG
//  Created by Narciso Meza on 19/08/21.

import Foundation
class Resource: Identifiable, Codable {
    var name: String
    var quantity: Int
    var levelRequired: Int
    
    init(name: String, quantity: Int, levelRequired: Int) {
        self.name = name
        self.quantity = quantity
        self.levelRequired = levelRequired
    }
}

class Crop: Codable {
    var name: String
    var quantity: Int
    var levelRequired: Int
    
    init(name: String, quantity: Int, levelRequired: Int) {
        self.name = name
        self.quantity = quantity
        self.levelRequired = levelRequired
    }
}
