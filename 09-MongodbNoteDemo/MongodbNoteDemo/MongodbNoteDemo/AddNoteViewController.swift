//
//  AddNoteViewController.swift
//  MongodbNoteDemo
//
//  Created by Sanghun Park on 2022/01/05.
//

import UIKit

class AddNoteViewController: UIViewController {
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var bodyTextView: UITextView!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    var note: Note?
    var isUpdate = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Take note data and show if exist which mean it is for update 
        titleTextField.text = note?.title
        bodyTextView.text = note?.note
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    
    @IBAction func saveButtonTapped(_ sender: Any) {
        
        // Check this view is for Create or Update note
        if isUpdate == false {
            
            // Call addNote method from APIFunctions to Create note
            APIFunctions.functions.addNote(title: titleTextField.text!, note: bodyTextView.text, date: "Placeholder")
            
        } else {
            
            // Call addNote method from APIFunctions to Update note
            APIFunctions.functions.updateNote(title: titleTextField.text!, note: bodyTextView.text, date: "Placeholder", id: note!._id)
            
        }
        
        // Pop current ViewController and move to previous ViewController
        navigationController?.popViewController(animated: true)
        
    }
    
    
}
