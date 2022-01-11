//
//  AddNoteViewController.swift
//  MongodbNoteDemo
//
//  Created by Sanghun Park on 2022/01/05.
//

import UIKit

class AddNoteViewController: UIViewController {
    
    // MARK: - Properties
    var note: Note?
    var isUpdate = false
    
    // MARK: IBOutlets
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var bodyTextView: UITextView!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    @IBOutlet weak var deleteButton: UIBarButtonItem!
    
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        // Take note data and show if exist which mean it is for update
        titleTextField.text = note?.title
        bodyTextView.text = note?.note
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // if Create new note there will no Delete button appear
        if isUpdate == false {
            self.deleteButton.isEnabled = false
            self.deleteButton.title = ""
        }
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    
    // MARK: - Methods
    
    // MARK: IBActions
    @IBAction func saveButtonTapped(_ sender: Any) {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyy-MM-dd"
        let date = dateFormatter.string(from: Date())
        
        // Check title text and body text are not empty
        if titleTextField.text != "" && bodyTextView.text != "" {
            
            // Check this view is for Create or Update note
            if isUpdate == false {
                
                // Call addNote method from APIFunctions to Create note
                APIFunctions.functions.addNote(title: titleTextField.text!, note: bodyTextView.text, date: date)
                
            } else {
                
                // Call updateNote method from APIFunctions to Update note
                APIFunctions.functions.updateNote(title: titleTextField.text!, note: bodyTextView.text, date: date, id: note!._id)
                
            }
            
            // Pop current ViewController and return the screen back to the main screen
            navigationController?.popViewController(animated: true)
        }
        
    }
    
    @IBAction func deleteButtonTapped(_ sender: Any) {
        
        // Call deleteNote method from APIFunctions to Delete note
        APIFunctions.functions.deleteNote(id: note!._id)
        
        navigationController?.popViewController(animated: true)
    }
    
}
