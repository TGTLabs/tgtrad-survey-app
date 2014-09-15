//
//  SurveyDetailController.swift
//  guest-survey
//
//  Created by Luke.Gesior on 8/29/14.
//  Copyright (c) 2014 Daniel.Chahla. All rights reserved.
//

import UIKit

class SurveyDetailController: UIViewController {
    

    var model :SurveyModel?
    var questionIndex: NSNumber?
    
    @IBOutlet weak var currentQuestionTitle: UILabel!
    
    @IBOutlet weak var submitQuestion: UIButton!
    @IBOutlet weak var answer1: UILabel!
    @IBOutlet weak var answer2: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //println(model)
        currentQuestionTitle.text = model?.questions[questionIndex!].title
        println(model)
        answer1.text = model?.questions[questionIndex!].answers[0].text
        answer2.text = model?.questions[questionIndex!].answers[1].text
        

        
        println(model?.questions[questionIndex!])
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


