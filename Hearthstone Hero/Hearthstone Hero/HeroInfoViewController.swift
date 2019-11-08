//
//  HeroInfoViewController.swift
//  Hearthstone Hero
//
//  Created by Tianshu Xu on 04/03/2019.
//  Copyright © 2019 Tianshu Xu. All rights reserved.
//

import UIKit

class HeroInfoViewController: UIViewController {
    
    // outlets and actions
    @IBOutlet weak var heroLabel: UILabel!
    @IBOutlet weak var classNameLabel: UILabel!
    @IBOutlet weak var heroPowerLabel: UILabel!
    @IBOutlet weak var heroImageView: UIImageView!
    @IBOutlet weak var classImageView: UIImageView!
    @IBOutlet weak var heroPowerImageView: UIImageView!
    @IBOutlet weak var demoLabel: UILabel!
    @IBAction func moreInfoAction(_ sender: Any) {
        // nothing to do
    }
    @IBAction func artWorkAction(_ sender: Any) {
        // nothing to do as well
    }
    
    var heroData : Hero!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = heroData.name
        
        //populate outlets with data
        heroLabel.text      = heroData.name
        classNameLabel.text = heroData.className
        heroPowerLabel.text = heroData.heroPower
        heroImageView.image = UIImage(named: heroData.image+"/frame_00.png")
        classImageView.image = UIImage(named: "Classes_Icon/" + heroData.className)
        heroPowerImageView.image = UIImage(named: "Hero_Power/" + heroData.heroPower)
        
        // make image array and name array
        var framesNames = [String]()
        var frames = [UIImage]()
        // traverse and fill name and image array
        for i in 0..<30{
            if i<10{
                framesNames.append("frame_0" + String(i) + ".png")
            } else {
                framesNames.append("frame_" + String(i) + ".png")
            }
            frames.append(UIImage(named: heroData.image+"/"+framesNames[i])!)
        }
        // set animation
        heroImageView.animationImages = frames
        heroImageView.animationDuration = 4
        heroImageView.startAnimating()
        
        // match classes color
        switch heroData.className{
            case "Mage"    : classNameLabel.textColor = UIColor.cyan
            case "Paladin" : classNameLabel.textColor = UIColor(red: 1, green: 0.65, blue: 0.98, alpha: 1)
            case "Rogue"   : classNameLabel.textColor = UIColor.yellow
            case "Warrior" : classNameLabel.textColor = UIColor(red: 1, green: 0.85, blue: 0.55, alpha: 1)
            case "Warlock" : classNameLabel.textColor = UIColor(red: 0.7, green: 0.25, blue: 1, alpha: 1)
            case "Shaman"  : classNameLabel.textColor = UIColor(red: 0.35, green: 0.5, blue: 1, alpha: 1)
            case "Priest"  : classNameLabel.textColor = UIColor.white
            case "Hunter"  : classNameLabel.textColor = UIColor.green
            case "Druid"   : classNameLabel.textColor = UIColor.orange
            default        : break
        }
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        switch segue.identifier{
            case "details" : let destination = segue.destination as! HeroDetailsViewController
                             destination.heroData = heroData
            case "artWork" : let destination = segue.destination as! GalleryViewController
                             destination.heroData = heroData
            default        : break
        }
    }
}
