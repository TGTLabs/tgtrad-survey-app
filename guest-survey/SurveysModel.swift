import UIKit

class SurveysModel: JSON {
    override init(_ json:JSON)  {
        super.init(json)
        println(json)
        for (i, v) in self["surveys"]{
            surveys.append(SurveyModel(v))
        }
    }
    var surveys:[SurveyModel] = [SurveyModel]()
    
}