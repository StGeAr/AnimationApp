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
    
    private let animations = Animation.getAnimationList()
    private var animationIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        animationButton.setTitle("Run", for: .normal)
        updateAnimationDescription()
    }

    @IBAction func animationButtonPressed() {
        showViewAnimation()
        updateAnimationDescription()
        changeAnimation()
    }
    
    private func updateAnimationDescription() {
        let currentAnimation = animations[animationIndex]
        animationDescription.text = """
            preset: \(currentAnimation.preset)
            curve: \(currentAnimation.curve)
            force: \(currentAnimation.force)
            duration: \(currentAnimation.duration)
            delay: \(currentAnimation.delay)
        """
    }
    
    private func showViewAnimation() {
        animationView.animation = animations[animationIndex].preset
        animationView.curve = animations[animationIndex].curve
        animationView.force = animations[animationIndex].force
        animationView.duration = animations[animationIndex].duration
        animationView.delay = animations[animationIndex].delay
        animationView.animate()
    }
    
    private func changeAnimation() {
        animationIndex += 1
        
        if animationIndex < animations.count {
            animationButton.setTitle(animations[animationIndex].preset, for: .normal)
            return
        }
        
        animationIndex = 0
        animationButton.setTitle(animations[animationIndex].preset, for: .normal)
    }
        
}

