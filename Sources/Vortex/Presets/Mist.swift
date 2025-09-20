//
// Mist.swift
// Vortex
// https://www.github.com/twostraws/Vortex
// See LICENSE for license information.
//

import SwiftUI

extension VortexSystem {
    /// A built-in mist effect. Relies on a "mist" tag being present.
    public static let mist: VortexSystem = {
        VortexSystem(
            tags: ["mist"],
            position: [0.5, 1],
            shape: .box(width: 1.2, height: 0),
            birthRate: 120,
            lifespan: 6,
            speed: 0.15,
            speedVariation: 0.15,
            angle: .degrees(270),
            angleRange: .degrees(10),
            acceleration: [0, -0.02],
            dampingFactor: 0.5,
            colors: .ramp(
                Color(red: 0.9, green: 0.9, blue: 0.95, opacity: 0.35),
                Color(red: 0.9, green: 0.9, blue: 1.0, opacity: 0.0)
            ),
            size: 0.35,
            sizeVariation: 0.3,
            sizeMultiplierAtDeath: 1.4
        )
    }()
}


