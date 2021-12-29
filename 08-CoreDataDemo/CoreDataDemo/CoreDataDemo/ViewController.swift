//
//  ViewController.swift
//  CoreDataDemo
//
//  Created by Sanghun Park on 2021/12/29.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    // Reference to managed object context
    //let context = NSManagedObjectContext()
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    // Data for the table
    var items: [Person]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        tableView.delegate = self
        
        self.tableView.reloadData()
        
        // Get items from Core Data
        fetchPeople()
    }
    
    func fetchPeople() {
        
        // Fetch the data from Core Data to display in the tableView
        do {
            let request = Person.fetchRequest() as NSFetchRequest<Person>
            
            // Set the filtering and sorting on the request
            let sort = NSSortDescriptor(key: "name", ascending: true)
            request.sortDescriptors = [sort]
            
            // Using NSPredicate
            //let pred = NSPredicate(format: "name CONTAINS '%@", "T")
            //request.predicate = pred
            
            self.items = try context.fetch(request)
            
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
        catch {
            print("Error fetching data")
        }
    }
    
    @IBAction func addTapped(_ sender: Any) {
        
        // Create alert
        let alert = UIAlertController(title: "Add Person", message: "What is their name?", preferredStyle: .alert)
        alert.addTextField()
        
        // Configure button handler
        let submitButton = UIAlertAction(title: "Add", style: .default) { (action) in
            
            // Get the textfield for the alert
            let textfield = alert.textFields![0]
            
            // Create a person object
            let newPerson = Person(context: self.context)
            newPerson.name = textfield.text
            newPerson.age = 20
            newPerson.gender = "Male"
            
            // Save the data
            do {
                try self.context.save()
            }
            catch {
                print("Error saving data")
            }
            
            // Re-fresh the data
            self.fetchPeople()
        }
        
        let cancelButton = UIAlertAction(title: "Cancel", style: .default)
        
        // Add button
        alert.addAction(submitButton)
        alert.addAction(cancelButton)
        
        // Show alert
        self.present(alert, animated: true, completion: nil)
        
    }
    
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    // MARK: - UITableView.dataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // Return the number of people
        return self.items?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        // Get person from array and set the label
        let person = self.items![indexPath.row]
        
        // Configure the cell content
        cell.textLabel?.text = person.name
//        var content = cell.defaultContentConfiguration()
//        content.text = person.name
//
//        cell.contentConfiguration = content
        
        return cell
    }
    
    // MARK: - UITableView.delegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // Selected Person
        let person = self.items![indexPath.row]
        
        // Create alert
        let alert = UIAlertController(title: "Edit Person", message: "Edit name:", preferredStyle: .alert)
        alert.addTextField()
        
        let textfield = alert.textFields![0]
        textfield.text = person.name
        
        // Configure button handler
        let saveButton = UIAlertAction(title: "Save", style: .default) { (action) in
            
            // Get the textfield for the alert
            let textfield = alert.textFields![0]
            
            // Create a person object
            person.name = textfield.text
            
            // Save the data
            do {
                try self.context.save()
            }
            catch {
                print("Error saving data")
            }
            
            // Re-fresh the data
            self.fetchPeople()
            
        }
        
        // Add button
        alert.addAction(saveButton)
        
        // Show alert
        self.present(alert, animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        // Create swipe action
        let action = UIContextualAction(style: .destructive, title: "Delete") { (action, view, completionHandler) in
            
            // Which person to remove
            let personToRemove = self.items![indexPath.row]
            
            // Remove the person
            self.context.delete(personToRemove)
            
            // Save the data
            do {
                try self.context.save()
            }
            catch {
                print("Error in saving")
            }
            
            // Re-fetch the data
            self.fetchPeople()
        }
        
        // Return swipe actions
        return UISwipeActionsConfiguration(actions: [action])
    }
    
}
