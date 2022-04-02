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
    
    
    // relate with, @objc handlePan()
    func moveViewWithPan(view: UIView, sender: UIPanGestureRecognizer) {
        
        let translation = sender.translation(in: view)
        view.center = CGPoint(x: view.center.x + translation.x, y: view.center.y + translation.y)
        sender.setTranslation(CGPoint.zero, in: view)
    }
    
    func returnViewToOrigin(view: UIView) {
        
        UIView.animate(withDuration: 0.3, animations: {
            view.frame.origin = self.fileViewOrigin
        }, completion: nil)
    }
    
    func deleteView(view: UIView) {
        
        UIView.animate(withDuration: 0.3, animations: {
            view.alpha = 0.0
        }, completion: nil)
    }
    
    // MARK: IBActions
    @objc func handlePan(sender: UIPanGestureRecognizer) {
        
        let fileView = sender.view!
        
        switch sender.state {
        case .began, .changed:
            moveViewWithPan(view: fileView, sender: sender)
            
        case .ended:
            if fileView.frame.intersects(trashImageView.frame) {
                deleteView(view: fileView)
            }
            else {
                returnViewToOrigin(view: fileView)
            }
            
        default:
            break
        }
    }
    
}

