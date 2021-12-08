//
//  ViewController.swift
//  TrafficLight
//
//  Created by mac on 08.12.2021.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var orangeLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        redLightView.alpha = 0.3
        orangeLightView.alpha = 0.3
        greenLightView.alpha = 0.3
        
        redLightView.layer.cornerRadius = redLightView.bounds.width / 2
        orangeLightView.layer.cornerRadius = redLightView.bounds.width / 2
        greenLightView.layer.cornerRadius = redLightView.bounds.width / 2
    
        startButton.setTitle("START", for: .normal)
        
    }
    
    
    @IBAction func switchLightsAction() {
        
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
            redLightView.alpha = 1
        
        } else if startButton.currentTitle == "NEXT" {
            
            if redLightView.alpha == 1 {
                redLightView.alpha = 0.3
                orangeLightView.alpha = 1
                
            } else if orangeLightView.alpha == 1 {
                orangeLightView.alpha = 0.3
                greenLightView.alpha = 1
            
            } else {
                greenLightView.alpha = 0.3
                redLightView.alpha = 1
            }
            
        }
        
        
        
    
        
    }
    

}

