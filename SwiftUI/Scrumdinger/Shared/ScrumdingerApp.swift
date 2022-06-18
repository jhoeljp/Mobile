//
//  ScrumdingerApp.swift
//  Shared
//
//  Created by Jhoel Perez Ruiz on 6/15/22.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: DailyScrum.sampleData)
            }
        }
    }
}
