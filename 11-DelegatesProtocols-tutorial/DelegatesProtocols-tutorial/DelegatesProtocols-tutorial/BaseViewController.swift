//
//  BaseViewController.swift
//  DelegatesProtocols-tutorial
//
//  Created by Sanghun Park on 2022/03/31.
//

import UIKit

class BaseViewController: UIViewController {
    
    // MARK: - Properties
    let selectionViewID: String = "SelectionView"
    
    // MARK: IBOutlets
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var chooseButton: UIButton!
    

    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        chooseButton.layer.cornerRadius = chooseButton.frame.size.height/2
    }


    // MARK: - Methods
    
    // MARK: Custom Methods
    
    // MARK: IBActions
    @IBAction func chooseButtonTapped(_ sender: Any) {
        let selectionVC = storyboard?.instantiateViewController(withIdentifier: self.selectionViewID) as! SelectioinViewController
        present(selectionVC, animated: true, completion: nil)
    }
    
}

