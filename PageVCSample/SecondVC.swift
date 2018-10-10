//
//  SecondVC.swift
//  PageVCSample
//
//  Created by AFFIXUS IMAC1 on 5/7/18.
//  Copyright © 2018 AFFIXUS IMAC1. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {

    @IBOutlet weak var btPrevious: UIButton!
    @IBOutlet weak var btNext: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        FirstVC().tintButtonImage(button: btPrevious, image: (btPrevious.imageView?.image)!, color: .white)
        FirstVC().tintButtonImage(button: btNext, image: (btNext.imageView?.image)!, color: .white)
    }

   
    @IBAction func btPrevious(_ sender: UIButton) {
        let parentVC = self.parent as! PgeMainViewController
        parentVC.setViewControllers([parentVC.orderedViewControllers[0]], direction: .reverse, animated: true, completion: nil)
        
    }
    
    @IBAction func btNext(_ sender: UIButton) {
        let parentVC = self.parent as! PgeMainViewController
        parentVC.setViewControllers([parentVC.orderedViewControllers[2]], direction: .forward, animated: true, completion: nil)
        
    }
    
    
}
