//
//  General_Inspection.swift
//  VinBladelNew
//
//  Created by James Balek on 1/23/24.
//

import Foundation
import SwiftUI
import FirebaseDatabase

struct General_Inspection: View {
    let inspectionList: [String] = ["Wiper Blades", "Head Lights", "Mini Lights", "Air Filter", "Cabin Air Filter", "PCV Value", "Washer Fluid", "Engine Oil", "Power Steering Fluid", "Master Cyl. Fluid Level", "Brake Fluid", "Coolant Hoses", "Engine Coolant", "Battery Test", "Battery Accessories", "Start/Charge", "Belts", "Belt Tensioner", "Spark Plugs", "Fuel Filter", "Ignition  Wires", "Valve Cover Gasket", "Power Steering Hose", "Timing Belt", "Transfer Case/Differential Fluid", "Transmission Fluid"]
    var body: some View {
        GeometryReader { geo in
            VStack() {
                Text("General Inspection")
                    .font(.system(size: 27))
                    .bold()
                    .padding()
                Image("ColorsMeaning")
                    .resizable()
                    .frame(width: 900, height: 90)
                    .padding()
                    InspectionList(inspectionList: inspectionList, arrayTitle: "general")
                    Image("ColorsMeaning")
                        .resizable()
                        .padding()
            }
        }
    }
}

#Preview {
    General_Inspection()
}



