//
//  TasksListTableViewCell.swift
//  decode-tomorrow
//
//  Created by Mark on 10/11/2018.
//  Copyright © 2018 Just Because. All rights reserved.
//

import UIKit
import FontAwesome_swift

class TasksListTableViewCell: UITableViewCell {
    
    static let identifier = "TasksListTableViewCell"

    // MARK: - Outlets
    @IBOutlet weak var baseView: UIView!
    @IBOutlet weak var taskTitleLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    @IBOutlet weak var paletteView: UIView!
    @IBOutlet weak var amountView: UIView!
    @IBOutlet weak var amountValueLabel: UILabel!
    
    @IBOutlet weak var personIcon: UILabel!
    @IBOutlet weak var clockLabel: UILabel!
    // MARK: - Init
    
    override func awakeFromNib() {
        super.awakeFromNib()
        initViews()
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
        
        personIcon.font = UIFont.fontAwesome(ofSize: 12, style: .regular)
        personIcon.text = String.fontAwesomeIcon(name: .user)
        
        clockLabel.font = UIFont.fontAwesome(ofSize: 12, style: .regular)
        clockLabel.text = String.fontAwesomeIcon(name: .clock)
    }
    
}
