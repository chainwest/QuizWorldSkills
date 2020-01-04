//
//  Question.swift
//  QuizNUMBAdva
//
//  Created by Evgeniy on 02.01.2020.
//  Copyright © 2020 Evgeniy. All rights reserved.
//

import Foundation

class Question {
    let title: String
    let answers: [String]
    let rightAnswer: Int
    
    init(title: String, answers: [String], rightAnswer: Int) {
        self.title = title
        self.answers = answers
        self.rightAnswer = rightAnswer
    }
}
