//
//  ViewController.swift
//  MongodbNoteDemo
//
//  Created by Sanghun Park on 2022/01/01.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var notesArray = ["Note1", "Note2", "Note3", "Note4", "Note5"]

    @IBOutlet weak var notesTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        notesTableView.delegate = self
        notesTableView.dataSource = self
        
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "prototypeCell", for: indexPath)
        
        let note = self.notesArray[indexPath.row]
        
//        cell.textLabel?.text = notesArray[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = note
        
        cell.contentConfiguration = content
        
        return cell
    }
}

