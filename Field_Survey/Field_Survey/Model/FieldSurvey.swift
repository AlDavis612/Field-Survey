//
//  FieldSurvey.swift
//  Field_Survey
//
//  Created by Alex Davis on 5/3/19.
//  Copyright © 2019 Alex Davis. All rights reserved.
//

import Foundation

struct FieldSurvey {
    let classification: Classification
    let title: String
    let description: String
    let date: Date
    
    init (classification: Classification, title: String, description: String, date: Date) {
        self.classification = classification
        self.title = title
        self.description = description
        self.date = date
    }
    
    init?(classificationType: String, title: String, description: String, date: Date) {
        if let classification = Classification(rawValue: classificationType) {
            self.init(classification: classification, title: title, description: description, date: date)
        } else {
            return nil
        }
    }
}
