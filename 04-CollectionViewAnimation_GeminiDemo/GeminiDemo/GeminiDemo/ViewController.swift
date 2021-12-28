//
//  ViewController.swift
//  GeminiDemo
//
//  Created by Sanghun Park on 2021/12/28.
//

import UIKit
import Gemini

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    let photos = ["1", "2", "3", "4", "5"]
    
    @IBOutlet weak var geminiCollectionView: GeminiCollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        geminiCollectionView.dataSource = self
        geminiCollectionView.delegate = self
        
        // Configure the animation
        geminiCollectionView.gemini
            .rollRotationAnimation()
            .degree(45)
            .rollEffect(.rollUp)
        
    }

    
    // MARK: - UICollectionViewDataSource

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return photos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "gemCell", for: indexPath) as! MyCell
        
        cell.setCell(imageName: photos[indexPath.row])
        
        // Animate
        geminiCollectionView.animateCell(cell)
        
        return cell
    }
    
    // MARK: - UICollectionViewDelegate
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        // Animate
        geminiCollectionView.animateVisibleCells()
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        
        // Animate
        if let cell = cell as? MyCell {
            geminiCollectionView.animateCell(cell)
        }
    }
}

