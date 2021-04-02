//
//  test_multiplatformApp.swift
//  Shared
//
//  Created by YooHG on 2021/04/02.
//

import SwiftUI

@main // Entry point.
struct test_multiplatformApp: App {
    
    @Environment(\.scenePhase) private var scenePhase
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }.onChange(of: scenePhase) { phase in
            switch scenePhase {
            case .active:
                print("active")
            case .background:
                print("background")
            case .inactive:
                print("inactive")
            default:
                print("default")
            }
        }
    }
}
