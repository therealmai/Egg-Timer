//
//  ViewController.swift
//  Egg Timer
//
//  Created by Jomar Leano on 9/5/22.
//

import UIKit

class ViewController: UIViewController {

    let eggTimes:[String:Int] = ["Soft": 5, "Medium":7, "hard":12];
    var seconds = 60;
    var timer = Timer();
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func eggButton(_ sender: UIButton) {
        timer.invalidate();
        seconds = 60;
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(fireTimer), userInfo: nil, repeats: true);
        
        
        
    }
    
    @objc func fireTimer() {
        
        print("Timer \(seconds)")
        seconds -= 1;
    }
   
    

    
}

