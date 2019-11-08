//
//  Heroes.swift
//  Hearthstone Hero
//
//  Created by Tianshu Xu on 04/03/2019.
//  Copyright © 2019 Tianshu Xu. All rights reserved.
//

import Foundation

class Heroes
{
    var heroesData : [Hero]
    // [Hero] is an array of Hero instances
    
    // establishing a sample constructor
    // This consturctor is used for debugging and modelling
    init() {
        heroesData =
        [
            Hero(name:"Jaina Proudmoore",
                 className:"Mage",
                 heroPower:"Fireblast",
                 deckType:"Secret, Elemental, Big Spell",
                 flavorText:"The Kirin Tor’s leader is a powerful sorceress. She used to be a lot nicer before the Theramore thing.",
                 image:"game.jpg",
                 url:"https://wow.gamepedia.com/Jaina_Proudmoore")
        ]
    }
    
    // main constructor
    init(fromContentOfXML : String) {
        // making an XMLHeroesParser
        let parser = XMLHeroesParser(name: fromContentOfXML)
        
        // parsing
        parser.parsing()
        
        // setting heroesData with what it comes from parsing
        heroesData = parser.heroes
    }
    func count()->Int {return heroesData.count}
    func heroData(index:Int)->Hero {return heroesData[index]}
}
