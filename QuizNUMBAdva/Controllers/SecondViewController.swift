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
    
    //MARK: - Play again button
    @IBAction func playAgainButton(_ sender: Any) {
        performSegue(withIdentifier: "goToQuiz", sender: self)
    }
    
    //MARK: - Prepare for segue method
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToQuiz" {
            
            let firstVC = segue.destination as! ViewController
            
            firstVC.currentQuestion = startQuestion
            firstVC.totalScore = startScore
        }
    }
    

}
