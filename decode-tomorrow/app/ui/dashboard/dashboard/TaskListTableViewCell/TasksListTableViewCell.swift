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
    @IBOutlet weak var baseView: UIView!
    @IBOutlet weak var taskTitleLabel: UILabel!
    @IBOutlet weak var nameAndHoursLabel: UILabel!
    @IBOutlet weak var paletteView: UIView!
    @IBOutlet weak var amountView: UIView!
    @IBOutlet weak var amountValueLabel: UILabel!
    // MARK: - Init
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    private func initViews() {
        baseView.cornerRadius = 10
        paletteView.cornerRadius = 5
        amountView.cornerRadius = 5
    }
    
}
