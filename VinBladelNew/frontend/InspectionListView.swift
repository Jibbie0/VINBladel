//
//  InspectionListView.swift
//  VinBladelNew
//
//  Created by Halas Wolff on 2/14/24.
//

import Foundation
import SwiftUI

struct InspectionList: View {
    let inspectionList:[String]
    var body: some View {
        VStack {
            HStack {
                Spacer()
                    .frame(width: 250)
                Text("OK")
                    .foregroundStyle(.green)
                Text("SUG")
                    .foregroundStyle(.orange)
                Text("REQ")
                    .foregroundStyle(.red)
                Spacer()
                    .frame(width: 135)
                Text("Why Recommend")
            }
            .font(.subheadline)
            .font(.caption)
            ForEach(inspectionList, id: \.self) { item in
                InspectionItem(title: item)
            }
        }
    }
}

#Preview {
    InspectionList(inspectionList: ["null", "null"])
}
