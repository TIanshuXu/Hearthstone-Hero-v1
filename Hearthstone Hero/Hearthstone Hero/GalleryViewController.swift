//
//  GalleryViewController.swift
//  Hearthstone Hero
//
//  Created by jiajia shi on 10/03/2019.
//  Copyright © 2019 Tianshu Xu. All rights reserved.
//

import UIKit

class GalleryViewController: UIViewController {
    
    @IBOutlet weak var artWorkView: UIImageView!
    
    var heroData : Hero!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.title = heroData.name
        artWorkView.image = UIImage(named: heroData.image+"/artWork.jpg")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
