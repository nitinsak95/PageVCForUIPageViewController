//
//  FourthVC.swift
//  PageVCSample
//
//  Created by AFFIXUS IMAC1 on 5/7/18.
//  Copyright © 2018 AFFIXUS IMAC1. All rights reserved.
//

import UIKit

class FourthVC: UIViewController {
    
    @IBOutlet weak var btPrevious: UIButton!
    @IBOutlet weak var btNext: UIButton!
    @IBOutlet weak var btCheckBox: UIButton!
    @IBOutlet weak var vwCheckBox: UIView!
    
    @IBOutlet weak var vwNext: UIView!
    
    var tapGesture = UITapGestureRecognizer()
    
    var checked = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tapGesture = UITapGestureRecognizer(target: self, action: #selector(FourthVC.myviewTapped(_:))) // myVCName
        tapGesture.numberOfTapsRequired = 1
        tapGesture.numberOfTouchesRequired = 1
        vwCheckBox.addGestureRecognizer(tapGesture)
        vwCheckBox.isUserInteractionEnabled = true
        
        tapGesture = UITapGestureRecognizer(target: self, action: #selector(FourthVC.myviewTapped2(_:))) // myVCName
        tapGesture.numberOfTapsRequired = 1
        tapGesture.numberOfTouchesRequired = 1
        vwNext.addGestureRecognizer(tapGesture)
        vwNext.isUserInteractionEnabled = true
        
        FirstVC().tintButtonImage(button: btPrevious, image: (btPrevious.imageView?.image)!, color: .white)
        FirstVC().tintButtonImage(button: btNext, image: (btNext.imageView?.image)!, color: .white)
    }
    
    @objc func myviewTapped(_ sender: UITapGestureRecognizer) {
        if checked {
            btCheckBox.setImage( UIImage(named:"ic_unselected"), for: .normal)
            checked = false
        } else {
            btCheckBox.setImage(UIImage(named:"ic_selected"), for: .normal)
            checked = true
        }
    }
    
    
    @IBAction func btPrevious(_ sender: UIButton) {
        let parentVC = self.parent as! PgeMainViewController
        parentVC.setViewControllers([parentVC.orderedViewControllers[2]], direction: .forward, animated: true, completion: nil)
        
    }
    
    @IBAction func btNext(_ sender: UIButton) {
        let viewController: NewVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "hey") as! NewVC
        self.present(viewController, animated: true, completion: nil)
    }
    
    @IBAction func btCheckBox(_ sender: UIButton) {
        if checked {
            sender.setImage( UIImage(named:"ic_unselected"), for: .normal)
            checked = false
        } else {
            sender.setImage(UIImage(named:"ic_selected"), for: .normal)
            checked = true
        }
    }
    
    @objc func myviewTapped2(_ sender: UITapGestureRecognizer) {
        let viewController: NewVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "hey") as! NewVC
        self.present(viewController, animated: true, completion: nil)
    }

    
    @IBAction func newVC(_ sender: UIButton) {
        let viewController: NewVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "hey") as! NewVC
        self.present(viewController, animated: true, completion: nil)
    }
    
}
