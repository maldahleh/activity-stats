//
//  DataRow.swift
//  ActivityStats
//
//  Created by Mohammed Al-Dahleh on 2021-02-03.
//

import SwiftUI

struct DataRow: View {
    var dataPoints: [DataBox] = []
    
    var body: some View {
        HStack(spacing: 10) {
            ForEach(dataPoints, id: \.self) { point in
                point
            }
        }
    }
}

struct DataRow_Previews: PreviewProvider {
    static let points = [
        DataBox(dataPoint: "A", value: "B"),
        DataBox(dataPoint: "B", value: "1234"),
        DataBox(dataPoint: "A", value: "B"),
        DataBox(dataPoint: "B", value: "1234")
    ]
    
    static var previews: some View {
        DataRow(dataPoints: points)
    }
}
