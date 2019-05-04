//
//  FieldSurveyViewController.swift
//  Field_Survey
//
//  Created by Alex Davis on 5/3/19.
//  Copyright © 2019 Alex Davis. All rights reserved.
//

import UIKit

class FieldSurveyViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var FSTableView: UITableView!
    
    let fieldSurvey = FieldSurveyJSONLoader.load(fileName: "field_observations")
    
    let dateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fieldSurvey.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fieldSurveyCell", for: indexPath)
        
        if let cell = cell as? FieldSurveyTableViewCell {
            let fieldSurveys = fieldSurvey[indexPath.row]
            cell.iconImageView.image = fieldSurveys.classification.image
            cell.titleLabel.text = fieldSurveys.title
            cell.dateLabel.text = dateFormatter.string(from: fieldSurveys.date)
        }
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? FieldSurveyDetailViewController,
           let row = FSTableView.indexPathForSelectedRow?.row {
            destination.fieldSurvey = fieldSurvey[row]
        }
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
