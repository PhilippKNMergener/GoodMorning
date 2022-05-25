//
//  BackgroundView.swift
//  GoodMorningV1
//
//  Created by Philipp Mergener on 5/24/22.
//

import SwiftUI

// This view handles all of the background for the app
// It will be handed an object holding the state of the background from the content view to adjust to changes
// The animations should be handled within this view class

struct BackgroundView: View {
    @ObservedObject var viewState: BackgroundState
    @State private var circleScale: Double = 1.0
    @State private var animationComplete: Bool = false
    @State private var expanded: Bool = false
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            RadialGradient(colors: [.red, .orange], center: .center, startRadius: 0, endRadius: 300)
                .frame(width: 300, height: 300, alignment: .center)
                .clipShape(Circle())
                .scaleEffect(circleScale)
        }
        .onAppear {
            withAnimation(.easeInOut(duration: 4).repeatForever(autoreverses: true)) {
                circleScale += 0.1
            }
        }
        .onTapGesture {
            if viewState.currentState != .FullScreen {
                let animationDuration: Double = 3.0
                withAnimation(.linear(duration: animationDuration)) {
                    circleScale += 2
                    viewState.currentState = .FullScreen
                }
            }
        }
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(viewState: BackgroundState())
    }
}
