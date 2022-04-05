//
//  Animation.swift
//  AnimationApp
//
//  Created by Герман Ставицкий on 05.04.2022.
//

import Spring

struct Animation {
    
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    static func getAnimationList() -> [Animation] {

        var animations: [Animation] = []

        let presets = Spring.AnimationPreset.allCases.shuffled()
        let curve = Spring.AnimationCurve.allCases.shuffled()

        let iterationCount = Spring.AnimationPreset.allCases.count

        for index in 0..<iterationCount {
            let animation = Animation(
                preset: presets[index].rawValue,
                curve: curve[index].rawValue,
                force: Double.random(in: 0.70...0.90),
                duration: Double.random(in: 1.20...1.60),
                delay: Double.random(in: 0.25...0.50)
            )
            animations.append(animation)
        }
        return animations
    }
}
