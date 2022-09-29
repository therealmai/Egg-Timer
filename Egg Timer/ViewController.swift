//
//  ViewController.swift
//  Egg Timer
//
//  Created by Jomar Leano on 9/5/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var titleLabel: UILabel!
    
    let eggTimes : [String: Int] = ["Soft": 3, "Medium":4, "Hard":7];
    var totalTime = 0;
    var secondsPassed = 0;
    var timer = Timer();
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func eggButton(_ sender: UIButton) {
        
        
       
        titleLabel.text = "How do you like your eggs?"
        timer.invalidate();
        let hardness = sender.currentTitle!;
        totalTime = eggTimes[hardness]!;
        titleLabel.text = hardness;
        progressBar.progress = 0.0;
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(fireTimer), userInfo: nil, repeats: true);
    }
    
    @objc func fireTimer() {
        if (secondsPassed < totalTime){
            secondsPassed += 1;
            let percentDone = Float(secondsPassed) / Float(totalTime);
            progressBar.progress = Float(percentDone);
            print(percentDone);
        }else{
            timer.invalidate();
            titleLabel.text = "Egg Boiled"
        }
    }
    
}

