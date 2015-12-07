//
//  Enemy.swift
//  metaKnightGame
//
//  Created by Vu Dang on 12/7/15.
//  Copyright © 2015 Vu Dang. All rights reserved.
//

import Foundation

class Enemy: Character
{
    var loot: [String]
    {
        return ["Tanned Hide", "Blue Silk", "Copper Dagger"]
    }
    
    var type: String
    {
        return "Wild Boar";
    }
    
    func dropLoot() -> String?
    {
        if !isAlive
        {
            let rand = Int(arc4random_uniform(UInt32(loot.count)))
            return loot[rand]
        }
        
        else
        {
            return nil;
        }
    }
}