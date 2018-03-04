//
//  ViewController.swift
//  WAR
//
//  Created by Emily Bossiere on 1/11/18.
//  Copyright © 2018 Emily Bossiere. All rights reserved.
//  Images created by Julian Bossiere
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScore: UILabel!
    @IBOutlet weak var rightScore: UILabel!
    
    var leftPoints = 0
    var rightPoints = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    @IBAction func dealTap(_ sender: Any) {
        //randomize 2 numbers
        let leftRandomNum = arc4random_uniform(52) + 2
        let rightRandomNum = arc4random_uniform(52) + 2
        
        //change image views
        leftImageView.image = UIImage(named: "\(leftRandomNum)")
        rightImageView.image = UIImage(named: "\(rightRandomNum)")
        
        if leftRandomNum > rightRandomNum {
            leftPoints += 1
            leftScore.text = String(leftPoints)
        }
        else if rightRandomNum > leftRandomNum {
            rightPoints += 1
            
            rightScore.text = String(rightPoints)
            
        } else if leftRandomNum == rightRandomNum {
            
        }

    }

}

