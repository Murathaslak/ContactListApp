//
//  NewContactViewController.swift
//  ContactList
//
//  Created by Osman Murat Haslak on 22.10.2022.
//

import UIKit

class NewContactViewController: UIViewController {
    
    let context = appDelegate.persistentContainer.viewContext

    @IBOutlet var contactPhoneTextField: UITextField!
    @IBOutlet var contactNameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addContact(_ sender: Any) {
        
        if let name = contactNameTextField.text, let phone = contactPhoneTextField.text {
            
            let user = Users(context: context)
            user.user_name = name
            user.user_phone = phone
            
            appDelegate.saveContext()
        }
        
        let ac = UIAlertController(title: "Alert", message: "Kaydetme başarılı.", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "Tamam", style: .default))
        present(ac, animated: true)
        
    
        
    }
    
}
