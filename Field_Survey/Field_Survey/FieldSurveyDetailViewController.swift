//
//  FieldSurveyDetailViewController.swift
//  Field_Survey
//
//  Created by Alex Davis on 5/3/19.
//  Copyright © 2019 Alex Davis. All rights reserved.
//

import UIKit

class FieldSurveyDetailViewController: UIViewController {
    
    var fieldSurvey: FieldSurvey?
    
    var dateFormatter = DateFormatter()

    @IBOutlet weak var FieldSurveyImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        FieldSurveyImageView.image = fieldSurvey?.classification.image
        titleLabel.text = fieldSurvey?.title
        descriptionLabel.text = fieldSurvey?.description
        
        if let date = fieldSurvey?.date {
            dateLabel.text = dateFormatter.string(from: date)
        } else {
            dateLabel.text = ""
        }
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
