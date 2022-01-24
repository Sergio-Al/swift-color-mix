//
//  ViewController.swift
//  ColorMix
//
//  Created by Sergio Alejandro Machaca Lamas on 23/1/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        colorView.backgroundColor = .black
    }
    @IBAction func switchChanged(_ sender: UISwitch) {
        colorView.backgroundColor = sender.isOn ? .red : .black
    }
    

}

