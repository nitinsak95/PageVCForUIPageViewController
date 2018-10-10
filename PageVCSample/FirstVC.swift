//
//  FirstVC.swift
//  PageVCSample
//
//  Created by AFFIXUS IMAC1 on 5/5/18.
//  Copyright © 2018 AFFIXUS IMAC1. All rights reserved.
//

import UIKit

class FirstVC: UIViewController {
    
    @IBOutlet weak var btNext: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tintButtonImage(button: btNext, image: (btNext.imageView?.image)!, color: .white)
    }
    
    
    @IBAction func hh(_ sender: UIButton) {
        let parentVC = self.parent as! PgeMainViewController
        parentVC.setViewControllers([parentVC.orderedViewControllers[1]], direction: .forward, animated: true, completion: nil)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    func tintButtonImage(button:UIButton,image:UIImage,color:UIColor) {
        let tintedImage = image.withRenderingMode(.alwaysTemplate)
        button.setImage(tintedImage, for: .normal)
        button.tintColor = color
    }
}








