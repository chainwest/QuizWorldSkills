//
//  SecondViewController.swift
//  QuizNUMBAdva
//
//  Created by Evgeniy on 02.01.2020.
//  Copyright © 2020 Evgeniy. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var score = ""
    
    var startScore = 0
    var startQuestion = 0
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        
        scoreLabel.text = score
    }

}

extension SecondViewController {
    //MARK: - Prepare for segue method
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ViewController
        
        destVC.progressBar.frame.size.width = 0
        destVC.currentQuestion = 0
        destVC.totalScore = 0
        destVC.updateUI()
    }
}
