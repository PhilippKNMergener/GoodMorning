//
//  ForegroundView.swift
//  GoodMorningV1
//
//  Created by Philipp Mergener on 5/24/22.
//

import SwiftUI

struct ForegroundView: View {
    @ObservedObject var viewState: ForegroundState
    var body: some View {
        ZStack {
            switch viewState.currentState {
                case .Start:
                    Text("GoodMorning")
                case .Prompt:
                    Text("GoodMorning")
                case .Transition:
                    Text("GoodMorning")
                case .Tasks:
                    Text("GoodMorning")
            }
            TapToContinue()
        }
    }
}

struct ForegroundView_Previews: PreviewProvider {
    static var previews: some View {
        ForegroundView(viewState: ForegroundState())
    }
}
