//
//  BackgroundState.swift
//  GoodMorningV1
//
//  Created by Philipp Mergener on 5/24/22.
//

import SwiftUI

class BackgroundState: ObservableObject {
    
    @Published var currentState: bgStates
    @Published var colors: [Color]
    
    init() {
        self.currentState = .Breathing
        self.colors = [.red, .orange]
    }
    
    public func setBGColors(_ colors: [Color]) {
        self.colors = colors
    }
    
    public func updateState(_ state: bgStates? = nil) {
        if let state = state {
            currentState = state
        } else {
            if currentState == .Breathing {
                currentState = .FullScreen
            }
        }
    }
}

enum bgStates {
    case Breathing
    case FullScreen
}
