import UIKit

class SurveyModel: JSON {
    override init(_ json:JSON)  {
        super.init(json)
    }
    var name:String {
        return self["name"].asString!
    }
    var owner:String {
        return self["owner"].asString!
    }
    var maxResponses:NSNumber? {
        return self["maxResponses"].asNumber
    }
    var campaign:String {
        return self["campaign"].asString!
    }
    var costCenterId:String {
        return self["costCenterId"].asString!
    }
    var netWorth:NSNumber? {
        return self["netWorth"].asNumber
    }
    var _id:String {
        return self["_id"].asString!
    }
    
}
