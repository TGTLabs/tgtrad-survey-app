//
//  SurveyDetailController.swift
//  guest-survey
//
//  Created by Luke.Gesior on 8/29/14.
//  Copyright (c) 2014 Daniel.Chahla. All rights reserved.
//

import UIKit

class SurveyDetailController: UIViewController {
    

    var model :QuestionModel?
    
    
    @IBOutlet weak var currentQuestionTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //println(model)
        
        currentQuestionTitle.text = self.model?.title
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


