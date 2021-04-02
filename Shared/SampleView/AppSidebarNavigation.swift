//
//  AppSidebarNavigation.swift
//  test_multiplatform
//
//  Created by YooHG on 2021/04/02.
//

import SwiftUI

struct AppSidebarNavigation: View {
    enum NavigationItem {
        case menu
        case favorites
    }
    
    @State private var selection: Set<NavigationItem> = [.menu]
    
    var sidebar: some View {
        List(selection: $selection) {
            NavigationLink(destination: View1()) {
                Label("Menu", systemImage: "list.bullet")
            }
            .accessibility(label: Text("Menu"))
            .tag(NavigationItem.menu)
            
            NavigationLink(destination: View2()) {
                Label("Favorites", systemImage: "heart")
            }
            .accessibility(label: Text("Favorites"))
            .tag(NavigationItem.favorites)
        }
        .listStyle(SidebarListStyle())
    }
    
    var body: some View {
        NavigationView {
            sidebar
        }
    }
}

struct AppSidebarNavigation_Previews: PreviewProvider {
    static var previews: some View {
        AppSidebarNavigation()
    }
}
