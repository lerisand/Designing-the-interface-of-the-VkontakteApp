//
//  GroupCell.swift
//  Vkontakte
//
//  Created by Lera on 16.01.21.
//

import UIKit

class GroupCell: UITableViewCell {
    
    @IBOutlet weak var GroupName: UILabel?
    @IBOutlet weak var GroupImage: UIImageView?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        GroupImage?.layer.cornerRadius = 30
        GroupImage?.clipsToBounds = true
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
