//
//  Character.swift
//  metaKnightGame
//
//  Created by Vu Dang on 12/7/15.
//  Copyright © 2015 Vu Dang. All rights reserved.
//

import Foundation

class Character
{
    private var _hp: Int = 100
    private var _atkPwr: Int = 10

    
    var hp: Int
    {
        return _hp;
    }
    
    var atkPwr: Int
    {
        return _atkPwr;
    }
    
    init()
    {
        
    }
    
    init(startingHp: Int, startingAtkPwr: Int)
    {
        self._hp = startingHp
        self._atkPwr = startingAtkPwr;
    }
    
    func attemptAttack(atkPwr: Int) -> Bool
    {
        self._hp -= atkPwr;
        
        return true;
    }
    
    var isAlive: Bool
    {
        get
        {
            if hp <= 0
            {
                return false;
            }
            else
            {
                return true;
            }
        }
    }
    
    
}