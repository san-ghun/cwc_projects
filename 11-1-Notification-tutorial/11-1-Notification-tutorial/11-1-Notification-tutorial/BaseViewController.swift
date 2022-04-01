//
//  BaseViewController.swift
//  11-1-Notification-tutorial
//
//  Created by Sanghun Park on 2022/04/01.
//

import UIKit

let darkNotificationKey = "co.sanghun.darkSide"
let lightNotificationKey = "co.sanghun.lightSide"

//let didReceiveDarkNotification: Notification.Name = Notification.Name("DidReceiveDark")
//let didReceiveLightNotification: Notification.Name = Notification.Name("DidReceiveLight")

class BaseViewController: UIViewController {
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Properties
    let selectionViewID: String = "SelectionView"
    
    let dark = Notification.Name(rawValue: darkNotificationKey)
    let light = Notification.Name(rawValue: lightNotificationKey)
    
    // MARK: IBOutlets
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var chooseButton: UIButton!
    
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        chooseButton.layer.cornerRadius = chooseButton.frame.size.height/2
        createObserver()
    }


    // MARK: - Methods
    
    // MARK: Custom Methods
    func createObserver() {
        
        // Dark
        NotificationCenter.default.addObserver(self, selector: #selector(BaseViewController.updateMainImage(notification:)), name: dark, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(BaseViewController.updateNameLabel(notification:)), name: dark, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(BaseViewController.updateBackgroundColor(notification:)), name: dark, object: nil)
        
        // Light
        NotificationCenter.default.addObserver(self, selector: #selector(BaseViewController.updateMainImage(notification:)), name: light, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(BaseViewController.updateNameLabel(notification:)), name: light, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(BaseViewController.updateBackgroundColor(notification:)), name: light, object: nil)
    }
    
    @objc func updateMainImage(notification: NSNotification) {
        
        let isDark = notification.name == dark
        let image = isDark ? UIImage(named: "vader")! : UIImage(named: "luke")!
        mainImageView.image = image
    }
    
    @objc func updateNameLabel(notification: NSNotification) {
        
        let isDark = notification.name == dark
        let name = isDark ? "Darth Vader" : "Luke Skywalker"
        nameLabel.text = name
    }
    
    @objc func updateBackgroundColor(notification: NSNotification) {
        
        let isDark = notification.name == dark
        let color = isDark ? UIColor.red : UIColor.cyan
        view.backgroundColor = color
    }
    
    // MARK: IBActions
    @IBAction func chooseButtonTapped(_ sender: Any) {
        let selectionVC = storyboard?.instantiateViewController(withIdentifier: selectionViewID) as! SelectionViewController
        selectionVC.modalPresentationStyle = .fullScreen
        present(selectionVC, animated: true, completion: nil)
    }
    
}

