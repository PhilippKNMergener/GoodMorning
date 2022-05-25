//
//  TapToContinue.swift
//  GoodMorningV1
//
//  Created by Philipp Mergener on 5/24/22.
//

import SwiftUI

struct TapToContinue: View {
    @State private var isShowing = true
    var body: some View {
        VStack {
            Spacer()
            Text("Tap Anywhere To Continue")
                .bold()
                .italic()
                .foregroundStyle(.regularMaterial)
                .opacity(isShowing ? 1 : 0)
        }
    }
}

struct TapToContinue_Previews: PreviewProvider {
    static var previews: some View {
        TapToContinue()
    }
}
