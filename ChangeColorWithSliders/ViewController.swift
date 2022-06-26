//
//  ViewController.swift
//  ChangeColorWithSliders
//
//  Created by user on 26.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var rectangleView: UIView!
    
    @IBOutlet var redValue: UILabel!
    @IBOutlet var greenValue: UILabel!
    @IBOutlet var blueValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rectangleView.layer.cornerRadius = 10
    }


}

