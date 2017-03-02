//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Chase McElroy on 3/1/17.
//  Copyright © 2017 Chase McElroy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var dacoolTableView: UITableView!
    
    var emojis = ["😥","🐶","😀","📱","👩🏼‍🌾","👩🏼‍💻","👸🏼","🕴🏾","👱🏻‍♀️"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dacoolTableView.dataSource = self
        dacoolTableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! String

    }

}

