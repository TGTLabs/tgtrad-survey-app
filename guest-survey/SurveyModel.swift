import UIKit

class SurveyModel: JSON {
    override init(_ json:JSON)  {
        super.init(json)
    }
    var name:String {
            //println(self["title"].asString)
        return self["name"].asString!
    }
    var owner:String {
        //println(self["title"].asString)
        return self["owner"].asString!
    }
    var maxResponses:String? {
        //println(self["title"].asString)
        return self["maxResponses"].asString
    }
    var campaign:String {
        //println(self["title"].asString)
        return self["campaign"].asString!
    }
    var costCenterId:String {
        //println(self["title"].asString)
        return self["costCenterId"].asString!
    }
    var netWorth:String? {
        //println(self["title"].asString)
        return self["netWorth"].asString
    }
    var _id:String {
        //println(self["title"].asString)
        return self["_id"].asString!
    }
    
}
