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
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        redLightView.layer.cornerRadius = redLightView.bounds.width / 2
        orangeLightView.layer.cornerRadius = redLightView.bounds.width / 2
        greenLightView.layer.cornerRadius = redLightView.bounds.width / 2
    }


}

