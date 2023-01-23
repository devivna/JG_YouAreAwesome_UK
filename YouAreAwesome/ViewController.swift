//
//  ViewController.swift
//  YouAreAwesome
//
//  Created by Students on 23.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {

        if messageLabel.text == "Hello" {
            messageLabel.text = "Hi, sweety!"
            imageView.image = UIImage(named: "Book2")
        } else {
            messageLabel.text = "Hello"
            imageView.image = UIImage(named: "Book1")
        }
        
    }
    
}

