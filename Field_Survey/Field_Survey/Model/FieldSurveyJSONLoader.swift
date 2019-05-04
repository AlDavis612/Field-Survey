//
//  FieldSurveyJSONLoader.swift
//  Field_Survey
//
//  Created by Alex Davis on 5/3/19.
//  Copyright © 2019 Alex Davis. All rights reserved.
//

import Foundation

class FieldSurveyJSONLoader {
    class func load(fileName: String) -> [FieldSurvey] {
        var observations = [FieldSurvey]()
        
        if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
           let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
            observations = FieldSurveyJSONParser.parse(data)
        }
        return observations
    }
}
