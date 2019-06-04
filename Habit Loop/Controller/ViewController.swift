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
    
    var dayCompletStatus = false
    
    @IBOutlet var dayButtons: [UIButton]!
    
    var arrayOfDays = ["1st", "2nd", "3rd", "4th", "5th", "6th", "7th"]
    
    
//    Days Buttons -----------------------------------------

    @IBAction func dayCompleted(_ sender: UIButton) {
        
        streakCount += 1

        if let dayNumber = dayButtons.firstIndex(of: sender) {
            completeDay(dayOfTheMonth: arrayOfDays[dayNumber], on: sender)
            print("Index of the day selected is: \(dayNumber)")
            
        } else {
            print("chosen day was not in dayButtons")
        }
        
    }
    
    func completeDay(dayOfTheMonth dayNumber: String, on button: UIButton) {
        if button.currentTitle == dayNumber {
            button.backgroundColor = #colorLiteral(red: 0.6189721823, green: 0.6221218109, blue: 1, alpha: 1)
        } else {
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)
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

