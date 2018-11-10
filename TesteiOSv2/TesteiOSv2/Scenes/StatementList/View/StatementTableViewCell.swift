//
//  StatementTableViewCell.swift
//  TesteiOSv2
//
//  Created by Bruno on 10/11/18.
//  Copyright © 2018 Bruno Scheltzke. All rights reserved.
//

import UIKit

class StatementTableViewCell: UITableViewCell {
    // MARK: Outlets
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var shadowView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        shadowView.layer.addShadow(with: #colorLiteral(red: 0.8498296142, green: 0.8859475255, blue: 0.9151117206, alpha: 1), alpha: 0.5, xOffset: 0, yOffset: 5, blur: 12, spread: 0)
    }
    
    func setup(with statementInfo: StatementList.Fetch.ViewModel.StatementInfo) {
        titleLabel.text = statementInfo.title
        descriptionLabel.text = statementInfo.detail
        dateLabel.text = statementInfo.date
        valueLabel.text = statementInfo.value
    }
}
