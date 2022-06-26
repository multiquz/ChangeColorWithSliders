//
//  ViewController.swift
//  ChangeColorWithSliders
//
//  Created by user on 26.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: IB Outlets
    @IBOutlet var rectangleView: UIView!
    
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    // MARK: Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        rectangleView.layer.cornerRadius = 10
    }
    
    // MARK: IB Actions
    @IBAction func changeRedColor() {
        redValueLabel.text = "\(redSlider.value)"
        setRectangleViewColor()
    }
    
    @IBAction func changeGreenColor() {
        greenValueLabel.text = "\(greenSlider.value)"
        setRectangleViewColor()
    }
    
    @IBAction func changeBlueColor() {
        blueValueLabel.text = "\(blueSlider.value)"
        setRectangleViewColor()
    }
    
    // MARK: Private Methods
    private func setRectangleViewColor() {
        rectangleView.backgroundColor = UIColor.init(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
    }
}
