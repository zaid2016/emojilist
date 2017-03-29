//
//  ViewController.swift
//  Emoji list
//
//  Created by Jonathon Ayoub on 3/28/17.
//  Copyright © 2017 Zebra INC. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var dacooltableview: UITableView!
    
    
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        dacooltableview.dataSource = self
        dacooltableview.delegate = self
        emojis = makeEmojiArry()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return emojis.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let defVC = segue.destination as! DefinitionViewController
    defVC.emoji = sender as! Emoji 
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArry() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😎"
        emoji1.birthYear = 2010
        emoji1.category = "smiley"
        emoji1.definition = "A smiley face with sun glasses"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "👺"
        emoji2.birthYear = 2009
        emoji2.category = "things"
        emoji2.definition = "A red Mask"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🐹"
        emoji3.birthYear = 2011
        emoji3.category = "animal"
        emoji3.definition = "A cute Hamster"

        let emoji4 = Emoji()
        emoji4.stringEmoji = "🌲"
        emoji4.birthYear = 2010
        emoji4.category = "tree"
        emoji4.definition = "A big Tree"

        let emoji5 = Emoji()
        emoji5.stringEmoji = "🐱"
        emoji5.birthYear = 2016
        emoji5.category = "Animal"
        emoji5.definition = "A cute cat"

        let emoji6 = Emoji()
        emoji6.stringEmoji = "🏀"
        emoji6.birthYear = 2013
        emoji6.category = "Balls"
        emoji6.definition = "A Basketball"

        let emoji7 = Emoji()
        emoji7.stringEmoji = "😳"
        emoji7.birthYear = 2011
        emoji7.category = "smiley"
        emoji7.definition = "A shy Emoji"

        return [emoji1, emoji2, emoji3, emoji4, emoji5 ,emoji6, emoji7]
}


}
