import UIKit

class SurveyHomeController: UIViewController {
    var model :SurveyModel = SurveyModel(JSON.parse("{\"title\":\"Survey TITLE\"}"))
    
    @IBOutlet weak var lblSurveyTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lblSurveyTitle.text = model.title
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

