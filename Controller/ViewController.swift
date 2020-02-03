//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var progressbar: UIProgressView!
    
     var timer = Timer()
    
    var quizBrain = QuizBrain()
   
    
    @IBOutlet weak var questionLabel: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var flaseButton: UIButton!
    
    @IBAction func answerButton(_ sender: UIButton) {
        let title = sender.currentTitle
        var answer:Bool = quizBrain.checkAnswer(userAnswer: title!)
        
        if(answer){
            sender.backgroundColor = UIColor.green
        }
        else{
            sender.backgroundColor = UIColor.red
        }
        if(quizBrain.questionNumber < 2){
            quizBrain.questionNumber += 1
        }
        
        timer = Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
   @objc func updateUI(){
    questionLabel.text = quizBrain.getQuestionText()
        trueButton.backgroundColor = UIColor.clear
        flaseButton.backgroundColor = UIColor.clear
    
    progressBar.progress = quizBrain.getProgressBar()
    }
    
    
    
    @IBOutlet weak var progressBar: UIProgressView!
    
}

