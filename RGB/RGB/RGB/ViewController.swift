//
//  ViewController.swift
//  RGB
//
//  Created by Alex Lombry on 28/03/2017.
//  Copyright © 2017 Alex Lombry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var greyLabel: UILabel!
    @IBOutlet weak var greySlider: UISlider!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // default grey color when app loading
        greyAction(greySlider)
    }


    @IBAction func greyAction(_ sender: UISlider) {
        view.backgroundColor = UIColor(white: CGFloat(sender.value), alpha: 1)
        
        // format float with %.2f (2 decimals)
        greyLabel.text = String(format: "%.2f", sender.value)
        
        // color checker
        var color: Int = 1
        
        // change slider color based on sender value
        if sender.value >= 0.5 {
            color = 0
        }
        
        // color setter for label
        colorLabel(color: color)
    }
    
    @IBAction func rgbAction(_ sender: UISlider) {
        // create let variable for slider values
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        
        // change background to a different color
        view.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
        
        // update sliders value
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        
        // color checker
        var color: Int = 1
        if redSlider.value >= 0.5 && greenSlider.value >= 0.5 && blueSlider.value >= 0.5 {
            color = 0
        }
        
        // color setter for label
        colorLabel(color: color)
    }
    
    func colorLabel(color: Int) {
        redLabel.textColor = UIColor(white: CGFloat(color), alpha: 1)
        greenLabel.textColor = UIColor(white: CGFloat(color), alpha: 1)
        blueLabel.textColor = UIColor(white: CGFloat(color), alpha: 1)
        greyLabel.textColor = UIColor(white: CGFloat(color), alpha: 1)
    }
    
    @IBAction func reset() {
        // reset all sliders
        greySlider.value = 0.50
        redSlider.value = 0.50
        greenSlider.value = 0.50
        blueSlider.value = 0.50
        
        greyLabel.text = "0.50"
        redLabel.text = "0.50"
        greenLabel.text = "0.50"
        blueLabel.text = "0.50"
        
        // set background
        view.backgroundColor = UIColor(white: 0.5, alpha: 1)
        
        // create easeout transition
        let transition = CATransition()
        transition.type = kCATransitionFade
        transition.duration = 2
        transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        
        view.layer.add(transition, forKey: nil)
        
    }
    
}

