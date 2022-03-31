//
//  SelectioinViewController.swift
//  DelegatesProtocols-tutorial
//
//  Created by Sanghun Park on 2022/03/31.
//

import UIKit

class SelectioinViewController: UIViewController {
    
    // MARK: - Properties
    @IBOutlet weak var imperialButton: UIButton!
    @IBOutlet weak var rebelButton: UIButton!
    
    // MARK: IBOutlets
    

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
        dismiss(animated: true)
    }
    
    @IBAction func rebelButtonTapped(_ sender: Any) {
        dismiss(animated: true)
    }
}
