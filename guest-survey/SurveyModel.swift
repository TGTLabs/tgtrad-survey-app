import UIKit

class SurveyModel: JSON {
    override init(_ json:JSON)  {
        super.init(json)
    }
    var title:String? {
        return self["title"].asString
    }
}
