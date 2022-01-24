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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateColor()
    }
    @IBAction func switchChanged(_ sender: UISwitch) {
        updateColor()
    }
    
    func updateColor() {
        let red: CGFloat = redSwitch.isOn ? 1 : 0
        let green: CGFloat = greenSwitch.isOn ? 1 : 0
        let blue: CGFloat = blueSwitch.isOn ? 1 : 0
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        colorView.backgroundColor = color
    }
}


