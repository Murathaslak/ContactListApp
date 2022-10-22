//
//  ContactTableViewCell.swift
//  ContactList
//
//  Created by Osman Murat Haslak on 22.10.2022.
//

import UIKit

class ContactTableViewCell: UITableViewCell {

    @IBOutlet var contactLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
