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
        setRectangleViewColor()
    }
    
    // MARK: IB Actions
    @IBAction func changeRedColor() {
        redValueLabel.text = "\(round(redSlider.value * 1000) / 1000)"
        setRectangleViewColor()
    }
    
    @IBAction func changeGreenColor() {
        greenValueLabel.text = "\(round(greenSlider.value * 1000) / 1000)"
        setRectangleViewColor()
    }
    
    @IBAction func changeBlueColor() {
        blueValueLabel.text = "\(round(blueSlider.value * 1000) / 1000)"
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
