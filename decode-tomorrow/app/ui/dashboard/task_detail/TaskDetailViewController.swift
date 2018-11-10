//
//  TaskDetailViewController.swift
//  decode-tomorrow
//
//  Created by Mark on 10/11/2018.
//  Copyright © 2018 Just Because. All rights reserved.
//

import UIKit

class TaskDetailViewController: UIViewController, Storyboarded {

    static var storyboardId: String = "TaskDetailViewController"
    static var storyboard: String = "Dashboard"

    // MARK: - Outlets
    @IBOutlet weak var detailCardView: UIView!
    @IBOutlet weak var descriptionCardView: UIView!
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var contactButton: UIButton!
    @IBOutlet weak var claimButton: UIButton!
    // END OUTLETS

    var feature: ClaimTaskFeature?

    // MARK: - Init

    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
        initFeature()
    }
    
    private var taskViewModel: TaskViewModel!
    
    func initValues(_ taskViewModel: TaskViewModel) {
        self.taskViewModel = taskViewModel
    }
    
    private func initViews() {
        detailCardView.cornerRadius = 10
        descriptionCardView.cornerRadius = 10
        descriptionCardView.clipsToBounds = true
        descriptionTextView.font = Fonts.AvenirNextMedium.font(14)
        descriptionTextView.textColor = Colors.textGray.uiColor
        contactButton.styleWhiteBorder()
        claimButton.styleInverted()
    }

    private func initFeature() {
        self.feature = ClaimTaskFeature(self)
    }

    // MARK: - Actions

}

extension TaskDetailViewController: ClaimTaskFeatureDeletage {
    
    func claimTaskSuccess(_ viewModel: ClaimTaskViewModel) {
    }
    
    func claimTaskError(error: String) {
    }

}
