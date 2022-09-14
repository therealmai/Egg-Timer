//
//  ViewController.swift
//  Egg Timer
//
//  Created by Jomar Leano on 9/5/22.
//

import UIKit

class ViewController: UIViewController {

    let softEgg = 5;
    let mediumEgg = 7;
    let hardEgg = 12;
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func eggButton(_ sender: UIButton) {
        switch(sender.currentTitle){
        case "Soft" : print(softEgg)
        case "Medium" : print(mediumEgg)
        case "Hard" : print(hardEgg)
        default : print("null")
        }
    }
    
}

