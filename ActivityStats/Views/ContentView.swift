//
//  ContentView.swift
//  ActivityStats
//
//  Created by Mohammed Al-Dahleh on 2021-02-02.
//

import SwiftUI

struct ContentView: View {
    var startDate = Date()
    
    var body: some View {
        HeaderView(startDate: startDate)
    }
}
