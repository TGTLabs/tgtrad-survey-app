//
//  QuestionModel.swift
//  guest-survey
//
//  Created by Daniel.Chahla on 9/4/14.
//  Copyright (c) 2014 Daniel.Chahla. All rights reserved.
//

import Foundation

class QuestionModel: JSON {
    override init(_ json:JSON)  {
        super.init(json)
        for (i, v) in self["answers"]{
            answers.append(AnswerModel(v))
        }
        println(json)
    }
    
    var title:String? {
        return self["title"].asString
    }
    var _type:String? {
        return self["_type"].asString
    }
    var _id:String? {
        return self["_id"].asString
    }
    var url:String? {
        return self["url"].asString
    }
    var answers:[AnswerModel] = [AnswerModel]()

}
