//
//  VideoCell.swift
//  UITableViewTutorial
//
//  Created by Evgeniy Poznyak on 6/3/20.
//  Copyright © 2020 Evgeniy Poznyak. All rights reserved.
//

import UIKit

class VideoCell: UITableViewCell {
    
    @IBOutlet weak var videoImageView: UIImageView!
    @IBOutlet weak var videoTitleLabel: UILabel!
    
    func setVideo(_ video: Video) {
        videoImageView.image = video.image
        videoTitleLabel.text = video.title
    }

}
