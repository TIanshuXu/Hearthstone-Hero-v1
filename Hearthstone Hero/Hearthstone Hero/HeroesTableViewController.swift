//
//  HeroesTableViewController.swift
//  Hearthstone Hero
//
//  Created by Tianshu Xu on 04/03/2019.
//  Copyright © 2019 Tianshu Xu. All rights reserved.
//

import UIKit

class HeroesTableViewController: UITableViewController {
    
    // getting the data
    var heroesData : Heroes!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Hero List"
        
        heroesData = Heroes(fromContentOfXML: "heroes.xml")
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return heroesData.count()
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        // Configure the cell...
        let heroData = heroesData.heroData(index: indexPath.row)
        
        cell.textLabel?.text = heroData.name
        cell.detailTextLabel?.text = heroData.className
        cell.imageView?.image = UIImage(named: heroData.image+"/frame_00.png")
        
        // match classes (detailTextLabel) with colors
        switch heroData.className{
            case "Mage"    : cell.detailTextLabel?.textColor = UIColor.cyan;
            case "Paladin" : cell.detailTextLabel?.textColor = UIColor(red: 1, green: 0.65, blue: 0.98, alpha: 1);
            case "Rogue"   : cell.detailTextLabel?.textColor = UIColor.yellow;
            case "Warrior" : cell.detailTextLabel?.textColor = UIColor(red: 1, green: 0.85, blue: 0.55, alpha: 1);
            case "Warlock" : cell.detailTextLabel?.textColor = UIColor(red: 0.7, green: 0.25, blue: 1, alpha: 1);
            case "Shaman"  : cell.detailTextLabel?.textColor = UIColor(red: 0.35, green: 0.5, blue: 1, alpha: 1);
            case "Priest"  : cell.detailTextLabel?.textColor = UIColor.white;
            case "Hunter"  : cell.detailTextLabel?.textColor = UIColor.green;
            case "Druid"   : cell.detailTextLabel?.textColor = UIColor.orange;
            default        : break;
        }
        
        return cell
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        let destination = segue.destination as! HeroInfoViewController
        
        // Pass the selected object to the new view controller.
        let indexPath = self.tableView.indexPath(for: sender as! UITableViewCell)
        
        destination.heroData = heroesData.heroData(index: (indexPath?.row)!)
    }
}
