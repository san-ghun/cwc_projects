//
//  SelectioinViewController.swift
//  DelegatesProtocols-tutorial
//
//  Created by Sanghun Park on 2022/03/31.
//

import UIKit

protocol SideSelectionDelegate {
    func didTapChoice(image: UIImage, name: String, color: UIColor)
}

// In this tutorial for Delegate Pattern, this ViewController role as a Boss of BaseViewController.
class SelectioinViewController: UIViewController {
    
    // MARK: - Properties
    var selectionDelegate: SideSelectionDelegate!
    
    // MARK: IBOutlets
    @IBOutlet weak var imperialButton: UIButton!
    @IBOutlet weak var rebelButton: UIButton!
    
    // MARK: - Life Cycle
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

    // MARK: - Methods
    
    // MARK: IBActions
    @IBAction func imperialButtonTapped(_ sender: Any) {
        selectionDelegate.didTapChoice(image: UIImage(named: "vader")!, name: "Darth Vader", color: .red)
        dismiss(animated: true)
    }
    
    @IBAction func rebelButtonTapped(_ sender: Any) {
        selectionDelegate.didTapChoice(image: UIImage(named: "luke")!, name: "Luke Skywalker", color: .cyan)
        dismiss(animated: true)
    }
}
