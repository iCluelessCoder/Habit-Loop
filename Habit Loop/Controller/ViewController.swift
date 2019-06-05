//
//  ViewController.swift
//  Habit Loop
//
//  Created by Marek Justus on 30/05/2019.
//  Copyright © 2019 Marek Justus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//updates Streak Count Label
    var streakCount = 0 {
        didSet {
            streakCounter.text = "Streak: \(streakCount)"
        }
    }
    
//    UI Labels -----------------------------------------
    
    @IBOutlet weak var streakCounter: UILabel!
    
//    UI Buttons ----------------------------------------
    
    @IBAction func dayCompleted(_ sender: UIButton) {
        streakCount += 1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
}

