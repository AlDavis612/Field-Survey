//
//  FieldSurveyTableViewCell.swift
//  Field_Survey
//
//  Created by Alex Davis on 5/3/19.
//  Copyright © 2019 Alex Davis. All rights reserved.
//

import UIKit

class FieldSurveyTableViewCell: UITableViewCell {
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
