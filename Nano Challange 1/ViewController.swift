//
//  ViewController.swift
//  Nano Challange 1
//
//  Created by Wimba Juventio Chandra on 20/05/19.
//  Copyright © 2019 Wimba Juventio Chandra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var envyButton: UIButton!
    @IBOutlet weak var blessedButton: UIButton!
    
    var clickedAnimation = 0
    var clickedAnimationBlessed = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        envyButton.layer.cornerRadius = envyButton.frame.width/2
        blessedButton.layer.cornerRadius = blessedButton.frame.width/2
//        if envyButton.layer.cornerRadius > blessedButton.layer.cornerRadius
//        {
//            self.view.sendSubviewToBack(self.envyButton)
//            self.view.bringSubviewToFront(self.blessedButton)
//        }
        
        if blessedButton.frame.width > envyButton.frame.width{
            self.view.sendSubviewToBack(self.envyButton)
            self.view.bringSubviewToFront(self.blessedButton)
        }else{
            self.view.sendSubviewToBack(self.blessedButton)
            self.view.bringSubviewToFront(self.envyButton)
        }
    }
    
    
    @IBAction func envyButtonClicked(_ sender: Any) {
        gedeinButtonEnvy()
    }
    func gedeinButtonEnvy ()
    {
        self.view.sendSubviewToBack(self.envyButton)
        self.view.bringSubviewToFront(self.blessedButton)

        UIView.animate(withDuration: 0.5)
        {
            switch self.clickedAnimation
            {
            case 0:
             self.envyButton.transform = CGAffineTransform (scaleX: 1.5, y: 1.5)
                
            case 1:
                self.envyButton.transform = CGAffineTransform (scaleX: 2, y: 2)
            case 2:
               self.envyButton.transform = CGAffineTransform (scaleX: 2.5, y: 2.5)
            case 3:
                self.envyButton.transform = CGAffineTransform (scaleX: 3, y: 3)
            case 4:
                self.envyButton.transform = CGAffineTransform (scaleX: 3.5, y: 3.5)
            case 5:
                self.envyButton.transform = CGAffineTransform (scaleX: 4, y: 4)
            case 6:
                self.envyButton.transform = CGAffineTransform (scaleX: 4.5, y: 4.5)
            case 7:
                self.envyButton.transform = CGAffineTransform (scaleX: 5, y: 5)
            case 8:
                self.envyButton.transform = CGAffineTransform (scaleX: 5.5, y: 5.5)
            case 9:
                self.envyButton.transform = CGAffineTransform (scaleX: 6, y: 6)
            case 10:
                self.envyButton.transform = CGAffineTransform (scaleX: 6.5, y: 6.5)
            case 11:
                self.envyButton.transform = CGAffineTransform (scaleX: 7, y: 7)
            case 12:
                self.envyButton.transform = CGAffineTransform (scaleX: 7.5, y: 7.5)
            case 13:
                self.envyButton.transform = CGAffineTransform (scaleX: 8, y: 8)
            default:
                break
            }
            print(self.clickedAnimation)
            self.clickedAnimation += 1
            if self.clickedAnimation > 13
            {
                self.clickedAnimation = 0
            }
//                 self.view.sendSubviewToBack(self.envyButton)
//                self.view.bringSubviewToFront(self.blessedButton)
        }
        if blessedButton.frame.width > envyButton.frame.width{
            self.view.sendSubviewToBack(self.envyButton)
            self.view.bringSubviewToFront(self.blessedButton)
        }else{
            self.view.sendSubviewToBack(self.blessedButton)
            self.view.bringSubviewToFront(self.envyButton)
        }
        self.view.setNeedsLayout()
//        super.viewDidLoad()
    }
    
    @IBAction func blessedButtonClicked(_ sender: Any)
    {
        gedeinButtonBlessed()
    }
    
    func gedeinButtonBlessed ()
    {
        self.view.sendSubviewToBack(self.blessedButton)
        self.view.bringSubviewToFront(self.envyButton)
    UIView.animate(withDuration: 0.5)
    {
    switch self.clickedAnimationBlessed
    {
        case 0:
          self.blessedButton.transform = CGAffineTransform (scaleX: 1.5, y: 1.5)
        case 1:
          self.blessedButton.transform = CGAffineTransform (scaleX: 2, y: 2)
        case 2:
          self.blessedButton.transform = CGAffineTransform (scaleX: 2.5, y: 2.5)
        case 3:
          self.blessedButton.transform = CGAffineTransform (scaleX: 3, y: 3)
        case 4:
          self.blessedButton.transform = CGAffineTransform (scaleX: 3.5, y: 3.5)
        case 5:
          self.blessedButton.transform = CGAffineTransform (scaleX: 4, y: 4)
        case 6:
          self.blessedButton.transform = CGAffineTransform (scaleX: 4.5, y: 4.5)
        case 7:
          self.blessedButton.transform = CGAffineTransform (scaleX: 5, y: 5)
        case 8:
          self.blessedButton.transform = CGAffineTransform (scaleX: 5.5, y: 5.5)
        case 9:
          self.blessedButton.transform = CGAffineTransform (scaleX: 6, y: 6)
        case 10:
          self.blessedButton.transform = CGAffineTransform (scaleX: 6.5, y: 6.5)
        case 11:
          self.blessedButton.transform = CGAffineTransform (scaleX: 7, y: 7)
        case 12:
          self.blessedButton.transform = CGAffineTransform (scaleX: 7.5, y: 7.5)
        case 13:
          self.blessedButton.transform = CGAffineTransform (scaleX: 8, y: 8)
    default:
    break
    self.view.sendSubviewToBack(self.blessedButton)
    self.view.bringSubviewToFront(self.envyButton)

    }
    print(self.clickedAnimationBlessed)
    self.clickedAnimationBlessed += 1
//        self.view.sendSubviewToBack(self.blessedButton)
//        self.view.bringSubviewToFront(self.envyButton)
        }
        if blessedButton.frame.width > envyButton.frame.width{
            self.view.sendSubviewToBack(self.envyButton)
            self.view.bringSubviewToFront(self.blessedButton)
        }else{
            self.view.sendSubviewToBack(self.blessedButton)
            self.view.bringSubviewToFront(self.envyButton)
        }
        self.view.setNeedsLayout()
    }
}


