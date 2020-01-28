//
//  ViewController.swift
//  Jeux de Carte
//
//  Created by alexandre rodriguez on 14/12/2019.
//  Copyright © 2019 alexandre rodriguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftCardView: UIImageView!
    @IBOutlet weak var rightCardView: UIImageView!
    @IBOutlet weak var leftScore: UILabel!
    @IBOutlet weak var rightScore: UILabel!
    var scoreRight = 0
    var scoreLeft = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func dealButtonClik(_ sender: Any) {
        
        let rightRandomNumber = Int.random(in: 2...14)
        
        let lefttRandomNumber = Int.random(in: 2...14)
        
        leftCardView.image = UIImage(named: "card\(lefttRandomNumber)")
        rightCardView.image = UIImage(named: "card\(rightRandomNumber)")
        
        if rightRandomNumber > lefttRandomNumber {
            scoreRight += 1
            rightScore.text = String(scoreRight)
        } else if rightRandomNumber < lefttRandomNumber {
            scoreLeft += 1
            leftScore.text = String(scoreLeft)
            
        } else {
            print("error")}
        
    }

}

