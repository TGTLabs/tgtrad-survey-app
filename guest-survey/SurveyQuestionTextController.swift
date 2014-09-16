//
//  SurveyQuestionTextController.swift
//  guest-survey
//
//  Created by Luke.Gesior on 8/29/14.
//  Copyright (c) 2014 Daniel.Chahla. All rights reserved.
//

import UIKit

class SurveyQuestionTextController: UIViewController {
    
    
    var model :SurveyModel?
    var questionIndex: NSNumber?
    var questionTotal: NSNumber?
    
    
    @IBOutlet weak var currentQuestionTitle: UILabel!
    @IBOutlet weak var submitQuestion: UIButton!
    @IBOutlet weak var answer1: UILabel!
    @IBOutlet weak var answer2: UILabel!

    @IBOutlet weak var answerSegment: UISegmentedControl!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var errorText: UILabel!

    
    @IBAction func submitQuestion(sender: AnyObject) {
        
        if(answerSegment.selectedSegmentIndex > -1){
        println(answerSegment.selectedSegmentIndex)
        if (questionIndex! + 1 < questionTotal!){
        self.performSegueWithIdentifier("TextToTextSegue", sender: self)
        }else{
            self.performSegueWithIdentifier("TextToFinishSegue", sender:self)
        }
        }else{
            errorText.hidden = false
        }
        

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        progressBar.setProgress(questionIndex! / (questionTotal! - 1), animated: true)
        currentQuestionTitle.text = model?.questions[questionIndex!].title
        errorText.hidden = true
        if (questionIndex! + 1 < questionTotal!){
            submitQuestion.setTitle("Next Question", forState: UIControlState())

        }else{
            submitQuestion.setTitle("Finish Survey", forState: UIControlState())
        }
        answer1.text = model?.questions[questionIndex!].answers[0].text
        answer2.text = model?.questions[questionIndex!].answers[1].text
        println(questionTotal)
        answerSegment.setTitle(model?.questions[questionIndex!].answers[0].text, forSegmentAtIndex: 0)
        answerSegment.setTitle(model?.questions[questionIndex!].answers[1].text, forSegmentAtIndex: 1)
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        
        if (segue.identifier == "TextToTextSegue"){
            println("next question")
            var surveyDetailController: SurveyQuestionTextController = segue.destinationViewController as SurveyQuestionTextController
            surveyDetailController.model = model?
            surveyDetailController.questionIndex = questionIndex! + 1
            surveyDetailController.questionTotal = questionTotal!
        }
        
        if (segue.identifier == "NextQuestionImageSegue"){
            println("next question")
            var surveyDetailController: SurveyQuestionTextController = segue.destinationViewController as SurveyQuestionTextController
            surveyDetailController.model = model?
            surveyDetailController.questionIndex = questionIndex! + 1
            surveyDetailController.questionTotal = questionTotal!
        }
    }
}


