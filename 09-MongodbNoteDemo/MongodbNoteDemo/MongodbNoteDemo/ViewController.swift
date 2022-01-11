//
//  ViewController.swift
//  MongodbNoteDemo
//
//  Created by Sanghun Park on 2022/01/01.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // MARK: - Properties
    
    // Initiate array of notes
    var notesArray: [Note] = []
    
    // MARK: IBOutlets
    @IBOutlet weak var notesTableView: UITableView!
    
    
    // MARK: - Segue Date
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let vc = segue.destination as! AddNoteViewController
        
        // Passes the note and tells the view controller to update instead of create
        if segue.identifier == Constants.Segue.updateNoteSegue {
            vc.note = notesArray[notesTableView.indexPathForSelectedRow!.row]
            vc.isUpdate = true
        }
        
    }
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        notesTableView.delegate = self
        notesTableView.dataSource = self
        
        // Assign APIFunctions delegate as self and fetch notes
        APIFunctions.functions.delegate = self
        APIFunctions.functions.fetchNotes()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Fetch notes array
        APIFunctions.functions.fetchNotes()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // Fetch notes array
        APIFunctions.functions.fetchNotes()
    }
    
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.Storyboard.prototypeCell, for: indexPath) as! NotePrototypeCell
        
        let note = self.notesArray[indexPath.row]
        
        // Customize cell to set title, note and date
        cell.title.text = note.title
        cell.note.text = note.note
        cell.date.text = note.date
        
        return cell
    }
}

// MARK: - Custom Delegates

// A protocole to interact with APIFunctions
protocol DataDelegate {
    func updateArray(newArray: String)
}


extension ViewController: DataDelegate {
    
    func updateArray(newArray: String) {
        
        do {
            // Decode reponse data into Note() and assign to notesArray
            notesArray = try JSONDecoder().decode([Note].self, from: newArray.data(using: .utf8)!)
            print(notesArray)
        }
        catch {
            print("Failed to decode")
        }
        
        // Reload updated data for TableView
        self.notesTableView.reloadData()
    }
    
    
}
