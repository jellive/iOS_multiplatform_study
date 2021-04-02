//
//  ContentView.swift
//  Shared
//
//  Created by YooHG on 2021/04/02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        #if os(iOS)
        Group {
            ContentView().previewDevice("iPad Air 2")
            ContentView().previewDevice("iPhone SE")
        }
        #else
        ContentView().previewDevice("Mac")
        #endif
    }
}
