//
//  ViewController.swift
//  ColorMix
//
//  Created by Sergio Alejandro Machaca Lamas on 23/1/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateColor()
    }
    @IBAction func switchChanged(_ sender: UISwitch) {
        updateColor()
    }
    
    func updateColor() {
        let red: CGFloat = redSwitch.isOn ? CGFloat(redSlider.value) : 0
        let green: CGFloat = greenSwitch.isOn ? CGFloat(blueSlider.value) : 0
        let blue: CGFloat = blueSwitch.isOn ? CGFloat(greenSlider.value) : 0
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        colorView.backgroundColor = color
    }
    @IBAction func sliderChanged(_ sender: Any) {
        updateColor()
    }
}


