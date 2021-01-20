//
//  FriendCell.swift
//  Vkontakte
//
//  Created by Lera on 16.01.21.
//

import UIKit

class FriendCell: UITableViewCell {

    @IBOutlet weak var FriendName: UILabel?
    @IBOutlet weak var FriendPhoto: UIImageView?
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        FriendPhoto?.layer.cornerRadius = 30
        FriendPhoto?.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
