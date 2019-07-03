//
//  ViewController.swift
//  IosDay3Image
//
//  Created by admin on 2019-07-02.
//  Copyright © 2019 Tarlochan5268. All rights reserved.
//

import UIKit

class firstViewController: UIViewController {

    @IBAction func swtchactionImage(_ sender: Any)
    {
        if(swtchImage.isOn)
        {
            imgJungle.image = UIImage(named: "gorilla.png")
        }
        else
        {
            imgJungle.image = UIImage(named: "elephant.png")
        }
    }
    @IBOutlet weak var swtchImage: UISwitch!
    @IBOutlet weak var slider1: UISlider!
    @IBOutlet weak var lblsliderText: UILabel!
    @IBAction func sliderValueChange(_ sender: UISlider) {
        
        lblsliderText.text = "\(Int(sender.value))"
    }
    @IBAction func actionsetImage(_ sender: Any) {
        imgJungle.image = UIImage(named: "elephant.png")
        
        view.backgroundColor = UIColor.black
    }
    @IBOutlet weak var btnSetImage: UIButton!
    @IBOutlet weak var imgJungle: UIImageView!
    override func
        
        viewDidLoad() {
        super.viewDidLoad()
        lblsliderText.text = String(Int(slider1.value))
        lblStper.text = String(stpr1.value)
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var stpr1: UIStepper!
    
    @IBOutlet weak var lblStper: UILabel!
    @IBAction func stpaction(_ sender: UIStepper) {
        lblStper.text = String(sender.value)
        if(stpr1.value == 2.0)
        {
            imgJungle.image = UIImage(named: "elephant.png")
        }
        else if(stpr1.value == 3.0)
        {
            imgJungle.image = UIImage(named: "home.png")
        }
        else if(stpr1.value == 4.0)
        {
            imgJungle.image = UIImage(named: "ice cream.png")
        }
        else if(stpr1.value == 5.0)
        {
            imgJungle.image = UIImage(named: "lion.png")
        }
        else
        {
            imgJungle.image = UIImage(named: "gorilla.png")
        }
    }
}

