//
//  Animation.swift
//  AnimationApp
//
//  Created by Герман Ставицкий on 05.04.2022.
//

import Foundation

struct Animation {
    
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    static func getAnimationList() -> [Animation] {
        [
            Animation(preset: "slideLeft", curve: "easeIn", force: 0.75, duration: 1.20, delay: 0.30),
            Animation(preset: "slideRight", curve: "easeOut", force: 0.80, duration: 1.60, delay: 0.25),
            Animation(preset: "slideDown", curve: "linear", force: 0.70, duration: 1.30, delay: 0.35),
            Animation(preset: "slideUp", curve: "spring", force: 0.85, duration: 1.40, delay: 0.40)
        ]
    }
}
