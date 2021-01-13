//
//  iosOAuthAppApp.swift
//  iosOAuthApp
//
//  Created by Rostyslav Kostynian on 12.01.2021.
//

import SwiftUI

@main
struct iosOAuthAppApp: App {
    static var ssoCenterApi = SSOCenterApi()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
