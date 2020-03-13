//
//  QuestionBank.swift
//  QuizNUMBAdva
//
//  Created by Evgeniy on 02.01.2020.
//  Copyright © 2020 Evgeniy. All rights reserved.
//

import Foundation

struct QuestionBank {
    var list = [Question]()
    
    init() {
        list.append(Question(title: "Первое правило бойцовского клуба", answers: ["Никому о нем не рассказывать", "Приводи друзей", "Спорт - сила"], rightAnswer: 0))
        
        list.append(Question(title: "Второе правило бойцовского клуба", answers: ["Алкоголь - могила", "Приводи двух друзей", "Никогда и никому о нем не рассказывать"], rightAnswer: 2))
        
        list.append(Question(title: "Третье правило бойцовского клуба", answers: ["Бой идет один за другим", "Драться пьяным", "Снимать очки"], rightAnswer: 0))
    }
}
