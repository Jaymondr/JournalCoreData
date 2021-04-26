//
//  EntryDetailViewController.swift
//  JournalCoreData
//
//  Created by Jaymond Richardson on 4/26/21.
//

import UIKit

class EntryDetailViewController: UIViewController {
    //MARK: - Outlets
    
    @IBOutlet weak var titleTextField: UITextField!
    
    
    @IBOutlet weak var bodyTextVIew: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
        

    }
    //MARK: - Properties
    var entry: Entry?

    //MARK: - Actions
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let title = titleTextField.text, !title.isEmpty,
              let bodyText = bodyTextVIew.text, !bodyText.isEmpty
        else {return}
        
        if let entry = entry {
//            entry.title = title
//            entry.bodyText = bodyText
            EntryController.sharedInstance.updateEntry(entry: entry, title: title, bodyText: bodyText)
            
        } else {
            EntryController.sharedInstance.createEntry(title: title, bodyText: bodyText)
        }
        navigationController?.popViewController(animated: true)
        
    }
    
    @IBAction func clearButtonTapped(_ sender: Any) {
        titleTextField.text = ""
        bodyTextVIew.text = ""
    }
    
  
    
    //MARK: - Functions
    func updateViews() {
        guard let entry = entry else {return}
        titleTextField.text = entry.title
        bodyTextVIew.text = entry.bodyText
        }

    
    
    
}//End of class
