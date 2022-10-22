//
//  DetailContactViewController.swift
//  ContactList
//
//  Created by Osman Murat Haslak on 22.10.2022.
//

import UIKit

class DetailContactViewController: UIViewController {

    @IBOutlet var contactPhoneLabel: UILabel!
    @IBOutlet var contactNameLabel: UILabel!
    
    var user:Users?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let u = user {
            contactNameLabel.text = u.user_name
            contactPhoneLabel.text = u.user_phone
        }

    }
    

}
