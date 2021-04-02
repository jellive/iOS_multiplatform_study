//
//  AppTabNavigation.swift
//  test_multiplatform (iOS)
//
//  Created by YooHG on 2021/04/02.
//

import SwiftUI

struct AppTabNavigation: View {
    @State private var selection: Tab = .menu
    var body: some View {
        TabView(selection: $selection,
                content:  {
                    NavigationView {
                        View1()
                    }
                    .tabItem {
                        Label("Menu", systemImage: "list.bullet")
                            .accessibility(label: Text("Menu"))
                    }
                    .tag(Tab.menu)
                    
                    NavigationView {
                        View2()
                    }
                    .tabItem {
                        Label("Favorites", systemImage: "heart.fill")
                            .accessibility(label: Text("Favorites"))
                    }
                    .tag(Tab.favorites)
                    //                    Text("Tab Content 1").tabItem { Text("Tab Label 1") }.tag(1)
                    //                    Text("Tab Content 2").tabItem { Text("Tab Label 2") }.tag(2)
                })
    }
}

extension AppTabNavigation {
    enum Tab {
        case menu
        case favorites
    }
}

struct AppTabNavigation_Previews: PreviewProvider {
    static var previews: some View {
        AppTabNavigation()
    }
}
