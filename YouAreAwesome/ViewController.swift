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
    
    var imageNumber = 1
    var messageNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        let messages = [
            "This is Book1",
            "This is Book2",
            "This is Book3",
            "This is Book4",
            "This is Book5",
        ]

        //let imageName = "Book" + String(imageNumber)
        imageNumber = Int.random(in: 1...messages.count-1)
        imageView.image = UIImage(named: "Book\(imageNumber)")
        messageLabel.text = messages[imageNumber - 1]
        
//        if messageNumber == messages.count {
//            imageNumber = 1
//            messageNumber = 0
//        }
        
        
//        if messageLabel.text == "Hello" {
//            messageLabel.text = "Hi, sweety!"
//            imageView.image = UIImage(named: "Book2")
//        } else {
//            messageLabel.text = "Hello"
//            imageView.image = UIImage(named: "Book1")
//        }
        
    }
    
}

