//
//  ExperienceTableViewCell.swift
//  ResumeAoolication
//
//  Created by Axel Axelsson on 2019-11-01.
//  Copyright © 2019 Axel Axelsson. All rights reserved.
//

import UIKit

class ExperienceTableViewCell: UITableViewCell {
    
    //MARK: properties

    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var DateLabel: UILabel!
    @IBOutlet weak var WorkImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
