//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Chase McElroy on 3/1/17.
//  Copyright © 2017 Chase McElroy. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    var emoji = ""
    var details = "wow!"
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji
        
        if emoji == "👱🏻‍♀️" {
          definitionLabel.text = "my wife"
        } else
        if emoji == "🕴🏾" {
            definitionLabel.text = "japanes man"    
        } else
        if emoji == "👱🏻‍♀️" {
            definitionLabel.text = details
        } else
        if emoji == "👱🏻‍♀️" {
            definitionLabel.text = details
        } else {
            definitionLabel.text = details
        }
        


    }



}
