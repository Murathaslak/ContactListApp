//
//  UpdateContactViewController.swift
//  ContactList
//
//  Created by Osman Murat Haslak on 22.10.2022.
//

import UIKit

class UpdateContactViewController: UIViewController {

    @IBOutlet var contactPhoneTextField: UITextField!
    @IBOutlet var contactNameTextField: UITextField!
    
    var user:Users?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let u = user {
            contactPhoneTextField.text = u.user_phone
            contactNameTextField.text = u.user_name
        }

    }


    @IBAction func contactUpdate(_ sender: Any) {
        
        if let k = user,let name = contactNameTextField.text, let phone = contactPhoneTextField.text {
            
            k.user_name = name
            k.user_phone = phone
            
            appDelegate.saveContext()
            
        }
        
        
    }
}
