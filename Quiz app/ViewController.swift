//
//  ViewController.swift
//  Quiz app
//
//  Created by Guled Ali on 1/15/19.
//  Copyright © 2019 Guled Ali. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let quesitons: [String] = ["What is 7+7?", "What is the capital of Vermont?", "What is cognac made from?"]
    let answers: [String] = ["14", "Montpelier", "Grapes"]
    var currentQuestionIndex : Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!{
        didSet{
            questionLabel.text = quesitons[currentQuestionIndex]
        }
    }
    
    @IBOutlet weak var answerLabel: UILabel!
  
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    @IBAction func showNextQuestion(_ sender: UIButton) {
        currentQuestionIndex += 1
        if currentQuestionIndex == quesitons.count{
            currentQuestionIndex = 0
            
        }
        
        let question: String = quesitons[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
        
    }
    @IBAction func showAnswer(_ sender: UIButton) {
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
                                             
    }
    

}

