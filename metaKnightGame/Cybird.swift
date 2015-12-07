//
//  Cybird.swift
//  metaKnightGame
//
//  Created by Vu Dang on 12/7/15.
//  Copyright © 2015 Vu Dang. All rights reserved.
//

import Foundation

class Cybird: Enemy
{
    let MAX_IMMUNE = 15;
    
    override var loot: [String]
    {
        return ["Yellow Feather", "Sharp Beak", "Tickler"]
    }
    
    override var type: String
    {
        return "Cybird"
    }
    
    override func attemptAttack(atkPwr: Int) -> Bool
    {
        if atkPwr >= MAX_IMMUNE
        {
            return super.attemptAttack(atkPwr)
        }
        else
        {
           return false
        }
    }
    
}