//
//  ThoughtTableViewCell.swift
//  ToDoList
//
//  Created by Juansyah - on 16/02/20.
//  Copyright © 2020 Juansyah. All rights reserved.
//

import UIKit

class ThoughtTableViewCell: UITableViewCell {
    
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var timestampLabel: UILabel!
    @IBOutlet weak var thoughtLabel: UILabel!
    @IBOutlet weak var likeImage: UIImageView!
    @IBOutlet weak var numLikesLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
