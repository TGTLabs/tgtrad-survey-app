//
//  QuestionModel.swift
//  guest-survey
//
//  Created by Daniel.Chahla on 9/4/14.
//  Copyright (c) 2014 Daniel.Chahla. All rights reserved.
//

import Foundation

class AnswerModel: JSON {
    override init(_ json:JSON)  {
        super.init(json)
        println(json)
    }
    
    var text:String? {
        return self.asString
    }


    
}
