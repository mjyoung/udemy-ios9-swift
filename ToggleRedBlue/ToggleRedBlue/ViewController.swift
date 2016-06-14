//
//  ViewController.swift
//  ToggleRedBlue
//
//  Created by Michael Young on 6/14/16.
//  Copyright © 2016 Momo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var blueBomb: UIImageView!
    @IBOutlet weak var redBomb: UIImageView!
    
    @IBOutlet weak var blueButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func toggleBlueBomb(sender: AnyObject) {
        blueBomb.hidden = !blueBomb.hidden
    }
    
    @IBAction func toggleRedBomb(sender: AnyObject) {
        redBomb.hidden = !redBomb.hidden
    }
    
}

