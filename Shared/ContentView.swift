//
//  ContentView.swift
//  Shared
//
//  Created by YooHG on 2021/04/02.
//

import SwiftUI

struct ContentView: View {
    
    #if os(iOS)
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    #endif
    
    var body: some View {
        #if os(iOS)
        if horizontalSizeClass == .compact {
            AppTabNavigation().accentColor(.green)
        } else {
            AppSidebarNavigation().accentColor(.green)
        }
        #else
        AppSidebarNavigation().accentColor(.green)
        #endif
        
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
