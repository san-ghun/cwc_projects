//
//  ViewController.swift
//  UIPanGesture-Demo
//
//  Created by Sanghun Park on 2022/04/02.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    var fileViewOrigin: CGPoint!
    
    // MARK: IBOutlets
    @IBOutlet weak var fileImageView: UIImageView!
    @IBOutlet weak var trashImageView: UIImageView!
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        addPanGesture(view: fileImageView)
        fileViewOrigin = fileImageView.frame.origin
    }


    // MARK: - Methods
    
    // MARK: Custom Methods
    func addPanGesture(view: UIView) {
        
        let pan = UIPanGestureRecognizer(target: self, action: #selector(self.handlePan(sender:)))
        view.addGestureRecognizer(pan)
    }
    
    // MARK: IBActions
    @objc func handlePan(sender: UIPanGestureRecognizer) {
        
        let fileView = sender.view!
        let translation = sender.translation(in: view)
        
        switch sender.state {
            
        case .began, .changed:
            fileView.center = CGPoint(x: fileView.center.x + translation.x, y: fileView.center.y + translation.y)
            sender.setTranslation(CGPoint.zero, in: view)
            
        case .ended:
            if fileView.frame.intersects(trashImageView.frame) {
                UIView.animate(withDuration: 0.3, animations: {
                    self.fileImageView.alpha = 0.0
                }, completion: nil)
            }
            else {
                UIView.animate(withDuration: 0.3, animations: {
                    self.fileImageView.frame.origin = self.fileViewOrigin
                }, completion: nil)
            }
            
        default:
            break
        }
    }
    
}

