//
//  HeaderView.swift
//  ActivityStats
//
//  Created by Mohammed Al-Dahleh on 2021-02-02.
//

import SwiftUI

struct HeaderView: View {
    var startDate = Date()
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("ActivityStats")
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.largeTitle)
            Text("Since \(startDate.toString())")
                .font(.title3)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}

extension Date {
    func toString() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        
        return formatter.string(from: self)
    }
}
