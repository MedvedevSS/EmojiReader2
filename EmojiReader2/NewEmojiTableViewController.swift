//
//  NewEmojiTableViewController.swift
//  EmojiReader2
//
//  Created by Сергей Медведев on 29.03.2021.
//

import UIKit

class NewEmojiTableViewController: UITableViewController {
    
    var emoji = Emoji(emoji: "", name: "", description: "", isFovourite: false)
    
    @IBOutlet weak var emojiTextfield: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var descriptionTextfield: UITextField!
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        updateSabeButtonState()
    }
    
    private func updateSabeButtonState() {
        let emojiText = emojiTextfield.text ?? ""
        let nameText = nameTextField.text ?? ""
        let descriptionText = descriptionTextfield.text ?? ""
        
        saveButton.isEnabled = !emojiText.isEmpty && !nameText.isEmpty && !descriptionText.isEmpty
    }
    
    @IBAction func testChanged(_ sender: UITextField) {
        updateSabeButtonState()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard segue.identifier == "saveSegue" else { return }
        let emoji = emojiTextfield.text ?? ""
        let name = nameTextField.text ?? ""
        let description = descriptionTextfield.text ?? ""
        
        self.emoji = Emoji(emoji: emoji, name: name, description: description, isFovourite: self.emoji.isFovourite)
    }
}
