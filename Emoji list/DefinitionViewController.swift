//
//  DefinitionViewController.swift
//  Emoji list
//
//  Created by Jonathon Ayoub on 3/28/17.
//  Copyright © 2017 Zebra INC. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var definitionLabel: UILabel!
    
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = "No Emoji"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "🐹" {
        definitionLabel.text = "A cute Hamster!"
        }
        if emoji == "🌲" {
            definitionLabel.text = "A big Tree!"
        }
        if emoji == "👺" {
            definitionLabel.text = "A red Mask!"
        }
        if emoji == "🏀" {
            definitionLabel.text = "A Basketball!"
        }
        if emoji == "😎" {
            definitionLabel.text = "A cool Emoji!"
        }
        if emoji == "🐱" {
            definitionLabel.text = "A cute Cat!"
        }
        if emoji == "😳" {
            definitionLabel.text = "A shy Emoji!"
        }



        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
