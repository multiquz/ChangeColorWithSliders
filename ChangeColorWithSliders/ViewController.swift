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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rectangleView.layer.cornerRadius = 10
    }
    
    
    
    @IBAction func changeRedColor() {
        redValueLabel.text = "\(redSlider.value)"
    }
    
    @IBAction func changeGreenColor() {
        greenValueLabel.text = "\(greenSlider.value)"
    }
    
    @IBAction func changeBlueColor() {
        blueValueLabel.text = "\(blueSlider.value)"
    }
    
}
