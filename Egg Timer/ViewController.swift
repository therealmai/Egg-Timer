//
//  ViewController.swift
//  Egg Timer
//
//  Created by Jomar Leano on 9/5/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    let eggTimes : [String: Int] = ["Soft": 3, "Medium":4, "Hard":7];
    var seconds = 60;
    var timer = Timer();
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func eggButton(_ sender: UIButton) {
        
        timer.invalidate();
        let hardness = sender.currentTitle!;
        seconds = eggTimes[hardness]!;
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(fireTimer), userInfo: nil, repeats: true);
    }
    
    @objc func fireTimer() {
        if (seconds > 0){
            print("Timer \(seconds)")
            seconds -= 1;
        }else{
            timer.invalidate();
            titleLabel.text = "Done"
        }
    }
    
}

