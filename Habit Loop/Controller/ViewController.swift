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
    
    @IBAction func streakResetButton(_ sender: UIButton) {
        streakCount = 0
        dayCompletedLabel.backgroundColor = #colorLiteral(red: 0.6189721823, green: 0.6221218109, blue: 1, alpha: 1)
        dayCompletedLabel.tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        habitFinishedLabel.image = nil
    }
    
    @IBOutlet weak var dayCompletedLabel: UIButton!
    
    
    @IBOutlet weak var habitFinishedLabel: UIImageView!
    
    @IBOutlet weak var streakCounter: UILabel!
    
//    UI Buttons ----------------------------------------
    
    @IBAction func dayCompleted(_ sender: UIButton) {
        streakCount += 1
        dayCompletedLabel.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        dayCompletedLabel.tintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        habitFinishedLabel.image = #imageLiteral(resourceName: "habitFinishedCheckImage")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dayCompletedLabel.layer.cornerRadius = 20.0

    }
    
}
