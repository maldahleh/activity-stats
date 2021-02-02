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
        Text(startDate.toString())
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension Date {
    func toString() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        
        return formatter.string(from: self)
    }
}
