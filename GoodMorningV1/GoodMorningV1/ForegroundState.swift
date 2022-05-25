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
}

enum fgState {
    case Start
    case Transition
    case Prompt
    case Tasks
}
