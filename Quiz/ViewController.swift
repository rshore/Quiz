//
//  ViewController.swift
//  Quiz
//
//  Created by Roger Shore on 1/27/19.
//  Copyright © 2019 Roger Shore. All rights reserved.
//  A Updated a comment

import UIKit

class ViewController: UIViewController {
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    let questions: [String] = ["What is 7+7?",
                               "What is the capital of Vermont?",
                               "What is cognac made from?"]
    let answers: [String] = ["14",
                             "Montpelier",
                             "Grapes"]
    var currentQuestionIndex: Int = 0
    @IBAction func showNextQuestion(_ sender: UIButton)
    {
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count
        {
            currentQuestionIndex = 0
            
        }
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    @IBAction func showAnswer(_ sender: UIButton)
    {
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
        // Do any additional setup after loading the view, typically from a nib.
    }


}

