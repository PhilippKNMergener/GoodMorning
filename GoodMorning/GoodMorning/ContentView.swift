//
//  ContentView.swift
//  GoodMorning
//
//  Created by Philipp Mergener on 5/1/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Hello World").padding(2)
            }
        }
        .navigationViewStyle(.automatic)
        .navigationTitle(Text("GoodMorning"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
