//
//  MistView.swift
//  Sandbox
//
//  Created by Zhendong Chen on 9/19/25.
//

import SwiftUI
import Vortex

struct MistView: View {
    let mist: VortexSystem = {
        VortexSystem(
            tags: ["mist"],
            position: [1.4, 1.2],
            shape: .box(width: 0.5, height: 0),
            birthRate: 2,
//            idleDuration: 0.5,
            lifespan: 15,
            speed: 0.08,
//            speedVariation: 0.02,
            angle: .degrees(270),
            angleRange: .degrees(30),
            acceleration: [0, -0.02],
            dampingFactor: 0.5,
            colors: .ramp(.purple.opacity(0.7), .purple.opacity(0)),
            size: 1.5,
            sizeVariation: 0.6,
            sizeMultiplierAtDeath: 0.5
        )
    }()
    var body: some View {
        VortexView(mist) {
            Image("Smoke1")
                .frame(width: 64)
                .blur(radius:15)
                .tag("mist")
            
            Image("Smoke15")
                .frame(width: 64)
                .blur(radius:15)
                .tag("mist")
            
            
        }
        .ignoresSafeArea(edges: .all)
    }
}

//struct MistView: View {
//    let mist: VortexSystem = {
//        VortexSystem(
//            tags: ["mist"],
//            position: [0.5, 0.5],
//            shape: .point,
//            birthRate: 0.2,
//            lifespan: 15,
//            speed: 0.04,
//            angle: .degrees(270),
//            angleRange: .degrees(30),
//            acceleration: [0, -0.02],
//            dampingFactor: 0.5,
//            colors: .ramp(.purple.opacity(0.7), .purple.opacity(0)),
//            size: 1,
//            sizeVariation: 0.5,
//            sizeMultiplierAtDeath: 0,
//            startTimeOffset: 5
//        )
//    }()
//    
//    let mist2: VortexSystem = {
//        VortexSystem(
//            tags: ["mist"],
//            position: [0.5, 1],
//            shape: .point,
//            birthRate: 0.2,
//            lifespan: 15,
//            speed: 0.04,
//            angle: .degrees(270),
//            angleRange: .degrees(60),
//            acceleration: [0, -0.02],
//            dampingFactor: 0.5,
//            colors: .ramp(.purple.opacity(0.7), .purple.opacity(0)),
//            size: 1,
//            sizeVariation: 0.5,
//            sizeMultiplierAtDeath: 0,
//            startTimeOffset: 5
//        )
//    }()
//    
//    var body: some View {
//        ZStack {
//            VortexView(mist) {
//                Image("Smoke1")
//                    .frame(width: 34)
//                    .blur(radius:15)
//                    .tag("mist")
//            }
//            
//            VortexView(mist2) {
//                Image("Smoke1")
//                    .frame(width: 34)
//                    .blur(radius:15)
//                    .tag("mist")
//            }
//        }
//        .navigationSubtitle("Demonstrates the smoke preset")
//        .ignoresSafeArea(edges: .all)
//        .background(.black)
//    }
//}

#Preview {
    MistView()
        .background(.black)
}
