//
//  Brakes_Inspection.swift
//  VinBladelNew
//
//  Created by James Balek on 1/23/24.
//

import Foundation
import FirebaseDatabase
import SwiftUI

struct Brakes_Inspection: View {
    var body: some View {
        let inspectionList: [String] = ["Battery Test", "Battery Accessories", "Start/Charge", "Belts", "Belt Tensioner", "Spark Plugs", "Fuel Filter", "Ignition  Wires", "Valvee Cover Gasket", "Power Steering Hose", "Timing Belt", "Transfer Case/Differential Fliud", "Transmission Fluid"]
            VStack {
                InspectionList(inspectionList: inspectionList)
                Image("ColorsMeaning")
                    .resizable()
                    .frame(width: 500, height: 50)
                    .padding()
            }
    }
}
