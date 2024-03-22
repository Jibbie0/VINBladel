//
//  MultiPoint_Inspection.swift
//  VinBladelNew
//
//  Created by Ali AI on 2/22/24.
//

import Foundation
import FirebaseDatabase
import SwiftUI

struct MultiPoint_Inspection: View {
    @State var inspectionList: [String] = ["Wiper Blades", "Head Lights", "Mini Lights", "Air Filter", "Cabin Air Filter", "PCV Value", "Washer Fluid", "Engine Oil", "Power Steering Fluid", "Master Cyl. Fluid Level", "Brake Fluid", "Coolant Hoses", "Engine Coolant"]
    var body: some View {
            VStack {
                Text("Multi-Point Inspection")
                    .font(.system(size: 27))
                    .bold()
                    .padding()
                Image("ColorsMeaning")
                    .resizable()
                    .frame(width: 900, height: 90)
                    .padding()
                ScrollView {
                    InspectionList(inspectionList: inspectionList, arrayTitle: "multiPoint")
                }
            }
    }
}
