import UIKit

class SurveyHomeController: UIViewController {
    
    var model :SurveyModel?
    var questionIndex: NSNumber?
    
    @IBOutlet weak var lblSurveyTitle: UILabel!
    
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
        
        if (segue.identifier == "FirstQuestionSegue"){
        println("beginning segue to SurveyDetailController")
        
        var surveyDetailController: SurveyDetailController = segue.destinationViewController as SurveyDetailController
        //var rowNumber = tableView.indexPathForSelectedRow()?.row
//        var selectedQuestion = self.model?.questions[0]
//        println(selectedQuestion)
        surveyDetailController.model = model?
        surveyDetailController.questionIndex = 0
    }
}

}

