//
//  DataBox.swift
//  ActivityStats
//
//  Created by Mohammed Al-Dahleh on 2021-02-15.
//

import SwiftUI

struct DataBox: View {
    var dataPoint: String
    var value: String
    
    var body: some View {
        VStack(alignment: .center) {
            Text(dataPoint)
                .font(.body)
            Text(value)
                .font(.caption)
        }
    }
}

struct DataBox_Previews: PreviewProvider {
    static var previews: some View {
        DataBox(dataPoint: "Test", value: "123")
    }
}
