//
//  SymptomTimelineCell.swift
//  TinyVitalsSymptomsTracker
//
//  Created by user66 on 26/12/25.
//

import UIKit

class SymptomTimelineCell: UITableViewCell {
    

    
    @IBOutlet weak var timeLabel: UILabel!
//    @IBOutlet weak var dotView: UIView!
    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!


    override func awakeFromNib() {
            super.awakeFromNib()

            selectionStyle = .none

            // Card appearance
            cardView.layer.cornerRadius = 16
            cardView.layer.masksToBounds = true

            // Icon polish
            iconImageView.contentMode = .scaleAspectFit
        }

        func configure(with item: SymptomTimelineItem) {

            timeLabel.text = item.time
            titleLabel.text = item.title
            descriptionLabel.text = item.description

            cardView.backgroundColor = item.color.withAlphaComponent(0.15)

            iconImageView.image = UIImage(systemName: item.iconName)
            iconImageView.tintColor = item.color
        }
    }
