//
//  ViewController.swift
//  Egg Timer
//
//  Created by Jomar Leano on 9/5/22.
//

import UIKit

class ViewController: UIViewController {

    let eggTimes:[String:Int] = ["soft": 5, "medium":7, "hard":12];
    var time = 60;
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func eggButton(_ sender: UIButton) {
        switch(sender.currentTitle){
        case "Soft" : countdown(time: eggTimes["soft"]!)
        case "Medium" : countdown(time: eggTimes["medium"]!)
        case "Hard" : countdown(time:eggTimes["hard"]!)
        default : print("null")
        }
    }
    
    func countdown(time : Int){
        var seconds = time * 60;
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            print(seconds);
            seconds -= 1;
            if seconds == 0 {
                timer.invalidate()
            }
        }
    }
    

    
}

