//
//  Hero.swift
//  Hearthstone Hero
//
//  Created by Tianshu Xu on 04/03/2019.
//  Copyright © 2019 Tianshu Xu. All rights reserved.
//

import Foundation

class Hero
{
    var name       : String
    var className  : String
    var heroPower  : String
    var deckType   : String
    var flavorText : String
    var image      : String
    var url        : String
    
    init() {
        self.name       = "Jaina Proudmoore"
        self.className  = "Mage"
        self.heroPower  = "Fireblast"
        self.deckType   = "Secret, Elemental, Big Spell"
        self.flavorText = "The Kirin Tor’s leader is a powerful sorceress. She used to be a lot nicer before the Theramore thing."
        self.image      = "game.jpg"
        self.url        = "https://wow.gamepedia.com/Jaina_Proudmoore"
    }
    
    init(name:String,className:String,heroPower:String,deckType:String,flavorText:String,image:String,url:String) {
        self.name       = name
        self.className  = className
        self.heroPower  = heroPower
        self.deckType   = deckType
        self.flavorText = flavorText
        self.image      = image
        self.url        = url
    }
    
    func setName(name:String)               {self.name = name}
    func getName()                -> String {return self.name}
    
    func setClassName(className:String)     {self.className = className}
    func getClassName()           -> String {return self.className}
    
    func setHeroPower(heroPower:String)     {self.heroPower = heroPower}
    func getHeroPower()           -> String {return self.heroPower}
    
    func setDeckType(deckType:String)       {self.name = deckType}
    func getDeckType()            -> String {return self.deckType}
    
    func setFlavorText(flavorText:String)   {self.flavorText = flavorText}
    func getFlavorText()          -> String {return self.flavorText}
    
    func setImage(image:String)             {self.image = image}
    func getImage()               -> String {return self.image}
    
    func setUrl(url:String)                 {self.url = url}
    func getUrl()                 -> String {return self.url}
}
