//
//  ViewController.swift
//  metaKnightGame
//
//  Created by Vu Dang on 12/7/15.
//  Copyright © 2015 Vu Dang. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var bannerLbl: UILabel!
    @IBOutlet weak var cybirdImage: UIImageView!
    @IBOutlet weak var commonBirdImage: UIImageView!
    @IBOutlet weak var metaKnightHpLbl: UILabel!
    @IBOutlet weak var enemyHpLbl: UILabel!
    @IBOutlet weak var treasureChestBtn: UIButton!
    
    var player = Player!()
    var enemy = Enemy!()
    var treasureChestMsg: String = "";
    var enemyAppearsMeg: String = "";

    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        generateRandomEnemy();
        bannerLbl.text = enemyAppearsMeg;
        
    }
    
    @IBAction func onAttackBtnPressed(sender: AnyObject)
    {
        
    }
    
    @IBAction func onTreasureBtnPressed(sender: AnyObject)
    {
        
    }
    
    func generateRandomEnemy()
    {
        let rand = Int(arc4random_uniform(2))
        
        if rand == 0
        {
            enemy = CommonBird();
            commonBirdImage.hidden = false;
        }
        else
        {
            enemy = Cybird();
            cybirdImage.hidden = false;
        }
        
        enemyAppearsMeg = "A wild \(enemy.type) has appeared!"
    }

}

