//
//  FieldSurveyJSONParser.swift
//  Field_Survey
//
//  Created by Alex Davis on 5/3/19.
//  Copyright © 2019 Alex Davis. All rights reserved.
//

import Foundation

class FieldSurveyJSONParser {
    
    static let dateFormatter = DateFormatter()
    
    class func parse(_ data: Data) -> [FieldSurvey] {
        var fieldSurveys = [FieldSurvey]()
        dateFormatter.dateFormat = "YYYY-MM-dd HH:mm"
        
        if let json = try? JSONSerialization.jsonObject(with: data, options: []),
            let root = json as? [String: Any],
            let status = root["status"] as? String,
            status == "ok" {
            
            if let observations = root["observations"] as? [Any] {
                for observation in observations {
                    if let observation = observation as? [String: String] {
                        if let classificationType = observation["classification"],
                           let title = observation["title"],
                           let description = observation["description"],
                           let dateString = observation["date"],
                           let date = dateFormatter.date(from: dateString) {
                         
                            if let fieldSurvey = FieldSurvey(classificationType: classificationType, title: title, description: description, date: date) {
                                fieldSurveys.append(fieldSurvey)
                            }
                            
                        }
                    }
                }
            }
        }
        
        return fieldSurveys
    }
    
}
