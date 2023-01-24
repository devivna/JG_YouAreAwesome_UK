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

    var imageNumber = 0

//    var messageNumber = 0
    
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
            "This is Book6",
            "This is Book7",
            "This is Book8",
            "This is Book9",
            "This is Book10",
        ]
        
        var newImageNumber: Int

        repeat {
            newImageNumber = Int.random(in: 1...messages.count)
        } while newImageNumber == imageNumber

        imageNumber = newImageNumber
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

