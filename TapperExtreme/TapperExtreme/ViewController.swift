//
//  ViewController.swift
//  TapperExtreme
//
//  Created by Michael Young on 6/14/16.
//  Copyright © 2016 Momo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Properties
    var maxTaps = 0
    var currentTaps = 0
    
    // Outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var tapsTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var coinBtn: UIButton!
    @IBOutlet weak var tapsLbl: UILabel!
    
    @IBAction func onPlayButtonPress(sender: UIButton!) {
     
        if tapsTxt.text != nil && tapsTxt.text != "" {
            logoImg.hidden = true
            tapsTxt.hidden = true
            playBtn.hidden = true
            
            coinBtn.hidden = false
            tapsLbl.hidden = false
            
            maxTaps = Int(tapsTxt.text!)!
            tapsLbl.text = String(maxTaps)
        }
        
    }
    
    @IBAction func onCoinButtonPress(sender: UIButton!) {
        currentTaps += 1
        if currentTaps >= maxTaps {
            tapsLbl.text = "You win!"
        } else {
            tapsLbl.text = String(maxTaps - currentTaps) + " taps left!"
        }
    }
    
}

