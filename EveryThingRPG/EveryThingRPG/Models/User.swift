//  User.swift
//  EveryThingRPG
//  Created by Narciso Meza on 19/08/21.

import Foundation
class User {
    var name: String
    var money: Int
    var netWorth: Int
    var mineLevel: Int
    var blockMined: Int
    var farmingLevel: Int
    var cropsPlanted: Int
    var fishingLevel: Int
    var fishCaught: Int
    var craftingLevel: Int
    var itemsCrafted: Int
    var exploringLevel: Int
    var exploreCount: Int
    var financeLevel: Int
    var inventory: Inventory
    
    init(name: String, money: Int, netWorth: Int, mineLevel: Int, blockMined: Int, farmingLevel: Int, cropsPlanted: Int, fishingLevel: Int, fishCaught: Int, craftingLevel: Int, itemsCrafted: Int, exploringLevel: Int, exploreCount: Int, financeLevel: Int, inventory: Inventory) {
        self.name = name
        self.money = money
        self.netWorth = netWorth
        self.mineLevel = mineLevel
        self.blockMined = blockMined
        self.farmingLevel = farmingLevel
        self.cropsPlanted = cropsPlanted
        self.fishingLevel = fishingLevel
        self.fishCaught = fishCaught
        self.craftingLevel = craftingLevel
        self.itemsCrafted = itemsCrafted
        self.exploringLevel = exploringLevel
        self.exploreCount = exploreCount
        self.financeLevel = financeLevel
        self.inventory = inventory
    }
}
