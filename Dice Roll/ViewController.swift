//
//  ViewController.swift
//  Dice Roll
//
//  Created by Игорь Бопп on 13/02/2019.
//  Copyright © 2019 Igor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var rightImage: UIImageView!
    @IBOutlet weak var leftImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func rollDice(_ sender: Any) {
        let randomOne = arc4random_uniform(6) + 1
        let randomTwo = arc4random_uniform(6) + 1
        let sum = randomOne + randomTwo
        textLabel.text = "The sum is: \(sum)"
        leftImage.image = UIImage(named: "Dice\(randomOne)")
        rightImage.image = UIImage(named: "Dice\(randomTwo)")
    }
    
}

