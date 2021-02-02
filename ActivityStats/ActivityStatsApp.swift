//
//  ActivityStatsApp.swift
//  ActivityStats
//
//  Created by Mohammed Al-Dahleh on 2021-02-02.
//

import SwiftUI

@main
struct ActivityStatsApp: App {
    @State var startDate = Date()
    
    let healthDataProvider = HealthDataProvider()
    
    var body: some Scene {
        WindowGroup {
            ContentView(startDate: startDate)
                .onAppear(perform: { self.requestHealthDataAccess() })
        }
    }
    
    func requestHealthDataAccess() {
        healthDataProvider.requestHealthAccess { res, err in
            startDate = healthDataProvider.earliestDataDate()
        }
    }
}
