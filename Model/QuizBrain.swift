//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Ali Haider on 03/02/2020.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain{
    let quiz = [
        ["London is capital of UK ?","True"],["World war 2 was ended in 1948 ?","False"],["France is also known as Holland ?","False"]
    ]
    
     var questionNumber = 0
    
    func checkAnswer(userAnswer:String) -> Bool{
        if userAnswer == quiz[questionNumber][1]{
        return true
        }
        else{
            return false
        }
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber][0]
    }
    
    func getProgressBar() -> Float {
        return  Float(questionNumber + 1)/Float(quiz.count)
    }
}
