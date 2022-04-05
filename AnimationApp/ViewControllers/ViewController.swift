//
//  ViewController.swift
//  AnimationApp
//
//  Created by Герман Ставицкий on 05.04.2022.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet var animationDescription: UILabel!
    @IBOutlet var animationView: SpringView! {
        didSet {
            animationView.layer.cornerRadius = 10
        }
    }
    @IBOutlet var animationButton: SpringButton! {
        didSet {
            animationButton.layer.cornerRadius = 10
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationDescription.text = "Hello"
    }


}

