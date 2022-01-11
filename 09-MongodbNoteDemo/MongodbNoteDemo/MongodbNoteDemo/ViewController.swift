//
//  ViewController.swift
//  MongodbNoteDemo
//
//  Created by Sanghun Park on 2022/01/01.
//

import UIKit

// A protocole to interact with APIFunctions
protocol DataDelegate {
    func updateArray(newArray: String)
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var notesTableView: UITableView!
    
    // Initiate array of notes
    var notesArray: [Note] = []
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let vc = segue.destination as! AddNoteViewController
        
        if segue.identifier == Constants.Segue.updateNoteSegue {
            vc.note = notesArray[notesTableView.indexPathForSelectedRow!.row]
            vc.isUpdate = true
        }
    }
    
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
        
        // Fetch notes
        APIFunctions.functions.fetchNotes()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        APIFunctions.functions.fetchNotes()
    }
    
    
    // MARK: - UITableViewDataSource

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.Storyboard.prototypeCell, for: indexPath)
        
        let note = self.notesArray[indexPath.row]
        
        // Initiate content configuration for cell
        var content = cell.defaultContentConfiguration()
        
        // Update content for cell
        content.text = note.title
        
        cell.contentConfiguration = content
        
        return cell
    }
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
