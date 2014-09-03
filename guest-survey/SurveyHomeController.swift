import UIKit

class SurveyHomeController: UIViewController {
    
var model :SurveyModel?
    
    //var model :SurveysModel = SurveysModel(JSON.parse("{\"surveys:\"[{\"title\":\"Survey TITLE\"}, {\"title\":\"Survey TITLE2\"} ]}"))
    
    @IBOutlet weak var lblSurveyTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lblSurveyTitle.text = self.model?.name
        //println(model)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

