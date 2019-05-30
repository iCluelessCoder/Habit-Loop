//
//  ViewController.swift
//  Habit Loop
//
//  Created by Marek Justus on 30/05/2019.
//  Copyright © 2019 Marek Justus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numberOfStreaks = 0
    
//    Days Buttons -----------------------------------------

    @IBAction func firstButtonPressed(_ sender: UIButton) {
        numberOfStreaks += 1
        updateStreakLabel()
    }
    
    @IBAction func secondButtonPressed(_ sender: UIButton) {
        numberOfStreaks += 1
        updateStreakLabel()
    }
    
    @IBAction func thirdButtonPressed(_ sender: UIButton) {
        numberOfStreaks += 1
        updateStreakLabel()
    }
    
//    UI Labels -----------------------------------------
    
    @IBOutlet weak var streakCounter: UILabel!
    
    @IBAction func resetStreakButton(_ sender: UIButton) {
        numberOfStreaks = 0
        streakCounter.text = "No Streak!"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
//updates Streak Count Label
    
    func updateStreakLabel() {
        streakCounter.text = "\(numberOfStreaks)"
    }
    
    
}

