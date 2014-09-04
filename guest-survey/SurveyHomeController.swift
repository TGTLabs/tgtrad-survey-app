import UIKit

class SurveyHomeController: UIViewController {
    
var model :SurveyModel?

    
    @IBOutlet weak var lblSurveyTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //println(model)
        
        lblSurveyTitle.text = self.model?.name
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        println("fuck this too")
        
        var surveyDetailController: SurveyDetailController = segue.destinationViewController as SurveyDetailController
        //var rowNumber = tableView.indexPathForSelectedRow()?.row
        var selectedQuestion = self.model?.questions[0]
        println(selectedQuestion)
        surveyDetailController.model = selectedQuestion
    }

}

