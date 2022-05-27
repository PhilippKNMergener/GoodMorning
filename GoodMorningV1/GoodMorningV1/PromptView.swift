//
//  PromptView.swift
//  GoodMorningV1
//
//  Created by Philipp Mergener on 5/24/22.
//

import SwiftUI

struct PromptText: View {
    let text: String
    let isShowing: Bool
    var body: some View {
        Text(text)
            .bold()
            .italic()
            .foregroundStyle(.regularMaterial)
            .opacity(isShowing ? 1 : 0)
    }
}

struct PromptView: View {
    
    @State private var viewState: Int = 0
    var actionsCompleted: Bool {
        viewState >= 4
    }
    
    var body: some View {
        ZStack {
            VStack(alignment: .center, spacing: 20) {
                PromptText(text: "How are you feeling?", isShowing: viewState >= 1)
                PromptText(text: "What is your goal?", isShowing: viewState >= 2)
                PromptText(text: "What will you achieve today?", isShowing: viewState >= 3)
            }
        }
        .onTapGesture {
            viewState += 1
        }
    }
}

struct PromptView_Previews: PreviewProvider {
    static var previews: some View {
        PromptView()
    }
}
