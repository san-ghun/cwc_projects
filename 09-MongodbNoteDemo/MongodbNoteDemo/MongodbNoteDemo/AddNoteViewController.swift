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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
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
        
        // Call addNote method from APIFunctions to create note
        APIFunctions.functions.addNote(title: titleTextField.text!, note: bodyTextView.text, date: "Placeholder")
    }
    
    
}
