//
//  ViewController.swift
//  QuizNUMBAdva
//
//  Created by Evgeniy on 02.01.2020.
//  Copyright © 2020 Evgeniy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let allQuestions = QuestionBank()
    
    var currentQuestion = 0
    var totalScore = 0

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    @IBOutlet weak var progressBar: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        
        nextQuestion()
    }
    
    
    //MARK: - Button pressed action
    @IBAction func buttonPressed(_ sender: UIButton) {
        checkAnswer(sender)
        currentQuestion += 1
        nextQuestion()
    }
    
    //MARK: - Go to next question
    func nextQuestion() {
        if currentQuestion <= allQuestions.list.count - 1 {
            updateUI()
        } else {
            performSegue(withIdentifier: "goToScore", sender: self)
        }
    }
    
    //MARK: - Update UI
    func updateUI() {
        scoreLabel.text = String(totalScore)
        titleLabel.text = allQuestions.list[currentQuestion].title
        firstButton.setTitle(allQuestions.list[currentQuestion].answers[0], for: .normal)
        secondButton.setTitle(allQuestions.list[currentQuestion].answers[1], for: .normal)
        thirdButton.setTitle(allQuestions.list[currentQuestion].answers[2], for: .normal)
        progressBar.frame.size.width = (view.frame.size.width / 3) * CGFloat(currentQuestion + 1)
    }
    
    //MARK: - Check answer
    func checkAnswer(_ sender: UIButton) {
        if sender.titleLabel?.text == allQuestions.list[currentQuestion].answers[allQuestions.list[currentQuestion].rightAnswer] {
            totalScore += 1
        }
    }
    
    //MARK: - Segue method
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToScore" {
            
            let secondVC = segue.destination as! SecondViewController
            
            secondVC.score = String(totalScore)
        }
    }
    
}

