//
//  MyCell.swift
//  GeminiDemo
//
//  Created by Sanghun Park on 2021/12/28.
//

import UIKit
import Gemini

class MyCell: GeminiCell {
    
    @IBOutlet weak var mainImageView: UIImageView!
    
    func setCell(imageName: String) {
        
        mainImageView.image = UIImage(named: imageName)
    }
    
}
