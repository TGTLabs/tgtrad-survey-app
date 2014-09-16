import UIKit

class SurveyHomeController: UIViewController {
    
    var model :SurveyModel?
    var questionIndex: NSNumber?
    
    @IBOutlet weak var lblSurveyTitle: UILabel!
    
    @IBAction func clickButton(sender: AnyObject) {
        println(self.model?.questions[0]._type)
        if(self.model?.questions[0]._type == "text"){
        self.performSegueWithIdentifier("FirstQuestionTextSegue", sender: self)
        }
        if(self.model?.questions[0]._type == "image"){
            self.performSegueWithIdentifier("FirstQuestionImageSegue", sender: self)

        }
    }
    @IBOutlet weak var getStartedButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lblSurveyTitle.text = self.model?.name
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        
        if (segue.identifier == "FirstQuestionTextSegue"){
        println("beginning segue to SurveyDetailController")
        
        var surveyQuestionTextController: SurveyQuestionTextController = segue.destinationViewController as SurveyQuestionTextController
        surveyQuestionTextController.model = model?
        surveyQuestionTextController.questionIndex = 0
        surveyQuestionTextController.questionTotal = model?.questions.count
    }
//        if (segue.identifier == "FirstQuestionImageSegue"){
//            var surveyQuestionImageController: SurveyQuestionImageController = segue.destinationViewController as SurveyQuestionImageController
//            surveyQuestionImageController.model = model?
//            surveyQuestionImageController.questionIndex = 0
//            surveyQuestionImageController.questionTotal = model?.questions.count
//        }
}

}

