//
//  ViewController.swift
//  ODEV6_BURAKOZER
//
//  Created by Burak Özer on 10.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let appearance = UITabBarAppearance()
        appearance.backgroundColor = UIColor.white
        
        tabBarController?.tabBar.standardAppearance = appearance
        tabBarController?.tabBar.scrollEdgeAppearance = appearance
        
        let logo = UIImage(named: "resim2.png")
        let imageView = UIImageView(image:logo)
        self.navigationItem.titleView = imageView
        
        
        
    }
    
    
   


}

