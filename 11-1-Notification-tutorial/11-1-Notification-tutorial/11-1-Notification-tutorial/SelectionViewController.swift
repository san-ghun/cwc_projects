//
//  SelectionViewController.swift
//  11-1-Notification-tutorial
//
//  Created by Sanghun Park on 2022/04/01.
//

import UIKit

class SelectionViewController: UIViewController {

    // MARK: - Properties
    
    // MARK: IBOutlets
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imperialButton: UIButton!
    @IBOutlet weak var rebelButton: UIButton!
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let tapGesture: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.otherTapped(_:)))
        self.view.addGestureRecognizer(tapGesture)
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
    @IBAction func imperialButtonTapped(_ sender: Any) {
        
        let name = Notification.Name(rawValue: darkNotificationKey)
        NotificationCenter.default.post(name: name, object: nil)
        
//        NotificationCenter.default.post(name: didReceiveDarkNotification, object: nil)
        
        dismiss(animated: true)
    }
    
    @IBAction func rebelButtonTapped(_ sender: Any) {
        
        let name = Notification.Name(rawValue: lightNotificationKey)
        NotificationCenter.default.post(name: name, object: nil)
        
//        NotificationCenter.default.post(name: didReceiveLightNotification, object: nil)
        
        dismiss(animated: true)
    }
    
    @IBAction func otherTapped(_ sender: UITapGestureRecognizer) {
        
        dismiss(animated: true)
    }
}
