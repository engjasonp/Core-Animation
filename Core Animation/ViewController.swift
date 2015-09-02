//
//  ViewController.swift
//  Core Animation
//
//  Created by Jason Eng on 9/1/15.
//  Copyright (c) 2015 EngJason. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var imageView: UIImageView!
    var currentAnimation = 0
    
    @IBOutlet weak var tap: UIButton!
    @IBAction func tapped(sender: AnyObject) {
        tap.hidden = true
        
        UIView.animateWithDuration(1, delay: 0, options: .allZeros,
            animations: { [unowned self] in
                switch self.currentAnimation {
                case 0:
                    break
                    
                default:
                    break
                }
            }) { [unowned self] (finished: Bool) in
                self.tap.hidden = false
        }
        
        ++currentAnimation
        
        if currentAnimation > 7 {
            currentAnimation = 0
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView = UIImageView(image: UIImage(named: "penguin"))
        imageView.center = CGPoint(x: 512, y: 384)
        view.addSubview(imageView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

