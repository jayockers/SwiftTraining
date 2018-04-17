//
//  ViewController.swift
//  Quiz
//
//  Created by Jay Ockers on 4/16/18.
//  Copyright © 2018 BigNerdRanch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // Model
    let questions = ["What is closest planet to the sun?", "What is the capital of Wyoming?", "What is the airspeed velocity of an unladen swallow?"]
    let answers = ["Mercury", "Cheyenne", "African or European?"]
    
    // View
    
    @IBOutlet var questionLabel: UILabel! = nil
    @IBOutlet var answerLabel: UILabel! = nil
    
    
    //Controller
    var currentQuestionIndex: Int = 0
    
    @IBAction func showNextQuestion(_ sender:UIButton){
        currentQuestionIndex += 1
        questionLabel.text = questions[currentQuestionIndex % questions.count]
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(_ sender:UIButton){
        answerLabel.text = answers[currentQuestionIndex % answers.count]
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        questionLabel.text = questions[currentQuestionIndex]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

