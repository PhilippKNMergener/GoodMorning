//
//  ForegroundState.swift
//  GoodMorningV1
//
//  Created by Philipp Mergener on 5/24/22.
//

import SwiftUI

class ForegroundState: ObservableObject {
    
    @Published var currentState: fgState
    
    init() {
        self.currentState = .Start
    }
    
    public func updateState(_ state: fgState? = nil) {
        if let state = state {
            currentState = state
        } else {
            switch currentState {
                case .Start:
                    currentState = .Transition
                case .Transition:
                    currentState = .Prompt
                case .Prompt:
                    currentState = .Tasks
                case .Tasks:
                    currentState = .Start
            }
        }
    }
}

enum fgState {
    case Start
    case Transition
    case Prompt
    case Tasks
}
