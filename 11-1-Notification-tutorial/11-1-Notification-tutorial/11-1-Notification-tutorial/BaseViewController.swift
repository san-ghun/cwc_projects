//
//  BaseViewController.swift
//  11-1-Notification-tutorial
//
//  Created by Sanghun Park on 2022/04/01.
//

import UIKit

let darkNotificationKey = "co.sanghun.darkSide"
let lightNotificationKey = "co.sanghun.lightSide"
let resetNotificationKey = "co.sanghun.reset"

//let didReceiveDarkNotification: Notification.Name = Notification.Name("DidReceiveDark")
//let didReceiveLightNotification: Notification.Name = Notification.Name("DidReceiveLight")
//let didReceiveResetNotification: Notification.Name = Notification.Name("DidReceiveReset")

class BaseViewController: UIViewController {
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Properties
    let selectionViewID: String = "SelectionView"
    
    let dark = Notification.Name(rawValue: darkNotificationKey)
    let light = Notification.Name(rawValue: lightNotificationKey)
    let reset = Notification.Name(rawValue: resetNotificationKey)
    
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
        
        // Reset
        NotificationCenter.default.addObserver(self, selector: #selector(BaseViewController.updateMainImage(notification:)), name: reset, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(BaseViewController.updateNameLabel(notification:)), name: reset, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(BaseViewController.updateBackgroundColor(notification:)), name: reset, object: nil)
    }
    
    @objc func updateMainImage(notification: NSNotification) {
        
        var image: UIImage
        
        switch notification.name {
        case dark:
            image = UIImage(named: "vader")!
        case light:
            image = UIImage(named: "luke")!
        default:
            image = UIImage(named: "logo")!
        }
        
        mainImageView.image = image
    }
    
    @objc func updateNameLabel(notification: NSNotification) {
        
        var name: String
        
        switch notification.name {
        case dark:
            name = "Darth Vader"
        case light:
            name = "Luke Skywalker"
        default:
            name = ""
        }
        
        nameLabel.text = name
    }
    
    @objc func updateBackgroundColor(notification: NSNotification) {
        
        var color: UIColor
        
        switch notification.name {
        case dark:
            color = UIColor.red
        case light:
            color = UIColor.cyan
        default:
            color = UIColor.black
        }
        
        view.backgroundColor = color
    }
    
    // MARK: IBActions
    @IBAction func chooseButtonTapped(_ sender: Any) {
        let selectionVC = storyboard?.instantiateViewController(withIdentifier: selectionViewID) as! SelectionViewController
        selectionVC.modalPresentationStyle = .fullScreen
        present(selectionVC, animated: true, completion: nil)
    }
    
}

