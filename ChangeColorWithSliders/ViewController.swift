//
//  ViewController.swift
//  ChangeColorWithSliders
//
//  Created by user on 26.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var rectangleView: UIView!
    
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    let defaultValue: Float = 50.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rectangleView.layer.cornerRadius = 10
    }
    
    @IBAction func changeRedColor() {
        redValueLabel.text = "\(redSlider.value.rounded())"
        if redSlider.value.rounded() == defaultValue {
            redValueLabel.text = "Default(50)"
        }
    }
    
    @IBAction func changeGreenColor() {
        greenValueLabel.text = "\(greenSlider.value.rounded())"
        if greenSlider.value.rounded() == defaultValue {
            greenValueLabel.text = "Default(50)"
        }
    }
    
    @IBAction func changeBlueColor() {
        blueValueLabel.text = "\(blueSlider.value.rounded())"
        if blueSlider.value.rounded() == defaultValue {
            blueValueLabel.text = "Default(50)"
        }
    }
}
