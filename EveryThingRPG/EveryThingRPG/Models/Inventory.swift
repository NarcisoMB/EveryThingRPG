//  Inventory.swift
//  EveryThingRPG
//  Created by Narciso Meza on 19/08/21.

import Foundation
class Inventory: Codable {
    var minedResources: [Resource]
    var cropsHarvested: [Crop]
    
    init(minedResources: [Resource], cropsHarvested: [Crop]) {
        self.minedResources = minedResources
        self.cropsHarvested = cropsHarvested
    }
}
