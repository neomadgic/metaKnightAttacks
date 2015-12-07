//
//  CommonBird.swift
//  metaKnightGame
//
//  Created by Vu Dang on 12/7/15.
//  Copyright © 2015 Vu Dang. All rights reserved.
//

import Foundation

class CommonBird: Enemy
{
    override var loot: [String]
    {
        return ["Yellow Feather", "Dull beak"]
    }
    
    override var type: String
    {
        return "Common Bird";
    }
    
    
}