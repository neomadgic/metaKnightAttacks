//
//  Player.swift
//  metaKnightGame
//
//  Created by Vu Dang on 12/7/15.
//  Copyright © 2015 Vu Dang. All rights reserved.
//

import Foundation

class Player: Character
{
    private var _name: String = "Player";
    private var _inventory = [String]()
    
    
    var name: String
    {
        return _name;
    }
    
    var inventory: [String]
    {
        return _inventory;
    }
    
    convenience init(playerName: String, startingHp: Int, startingAtkPwr: Int)
    {
        self.init(startingHp: startingHp, startingAtkPwr: startingAtkPwr);
        _name = playerName;
    }
    
    
    
    
}