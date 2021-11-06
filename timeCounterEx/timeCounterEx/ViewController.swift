//
//  ViewController.swift
//  timeCounterEx
//
//  Created by hong on 2021/11/06.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var timeRemaining: Int = 10
    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func playTapped(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(step), userInfo: nil, repeats: true)
    }
    
    @IBAction func pauseTapped(_ sender: Any) {
        timer.invalidate()
    }
    @IBAction func resetTapped(_ sender: Any) {
        timer.invalidate()
        timeRemaining = 10
        label.text = "\(timeRemaining)"
    }
    
    @objc func step() {
        if timeRemaining > 0 {
            timeRemaining -= 1
        } else {
            timer.invalidate()
            timeRemaining = 10
        }
        
        label.text = "\(timeRemaining)"
    }
}

