//
//  TasksListTableViewCell.swift
//  decode-tomorrow
//
//  Created by Mark on 10/11/2018.
//  Copyright © 2018 Just Because. All rights reserved.
//

import UIKit

class TasksListTableViewCell: UITableViewCell {
    
    static let identifier = "TasksListTableViewCell"

    // MARK: - Outlets
    @IBOutlet weak var taskNameLabel: UILabel!
    
    // MARK: - Init
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
