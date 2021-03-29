//
//  NewEmojiTableViewController.swift
//  EmojiReader2
//
//  Created by Сергей Медведев on 29.03.2021.
//

import UIKit

class NewEmojiTableViewController: UITableViewController {
    
    @IBOutlet weak var emojiTextfield: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var descriptionTextfield: UITextField!
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    @IBAction func testChanged(_ sender: UITextField) {
    }
}
