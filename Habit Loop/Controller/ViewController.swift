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
    
    @IBOutlet var dayButtons: [UIButton]!
    
    var arrayOfDays = ["1st", "2nd", "3rd", "4th", "5th", "6th", "7th"]
    
    
//    Days Buttons -----------------------------------------

    @IBAction func dayCompleted(_ sender: UIButton) {
        streakCount += 1
        if let dayNumber = dayButtons.firstIndex(of: sender) {
            
        }
        
    }
    
//    UI Labels -----------------------------------------
    
    @IBOutlet weak var streakCounter: UILabel!
    
    @IBAction func resetStreakButton(_ sender: UIButton) {
        streakCount = 0
        streakCounter.text = "No Streak!"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
}

