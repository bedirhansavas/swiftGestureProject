//
//  ViewController.swift
//  GestureRecognize
//
//  Created by Bedirhan Savaş on 27.04.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var tapLabel: UILabel!
    
    var change = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        
        imageView.addGestureRecognizer(gestureRecognizer)
    }

    @objc func changePic(){
        
       
        if change == true {
            imageView.image = UIImage ( named: "secondpic")
            tapLabel.text = "Tap For Dark Mode"
            tapLabel.textColor = UIColor.black
            change = false
        }
        else{
            imageView.image = UIImage ( named: "firstpic")
            tapLabel.text = "Tap For Light Mode"
            tapLabel.textColor = UIColor.white
            change = true
        }
        
        
        
    }
    
}

