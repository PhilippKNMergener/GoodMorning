//
//  ContentView.swift
//  GoodMorningV1
//
//  Created by Philipp Mergener on 5/24/22.
//

import SwiftUI

// ContentView is mainly just for overlaying the background and foreground views
struct ContentView: View {
    @StateObject var BGState = BackgroundState()
    @StateObject var FGState = ForegroundState()
    var body: some View {
        ZStack {
            BackgroundView(viewState: BGState)
            ForegroundView(viewState: FGState)
        }
        .onTapGesture {
            BGState.updateState()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
