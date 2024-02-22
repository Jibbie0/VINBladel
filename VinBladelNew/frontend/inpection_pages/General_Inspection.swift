//
//  General_Inspection.swift
//  VinBladelNew
//
//  Created by James Balek on 1/23/24.
//

import Foundation
import SwiftUI

struct General_Inspection: View {
    let inspectionList: [String] = ["Wiper Blades", "Head Lights", "Mini Lights", "Air Filter", "Cabin Air Filter", "PCV Value", "Washer Fluid", "Engine Oil", "Power Steering Fluid", "Master Cyl. Fluid Level", "Brake Fluid", "Coolant Hoses", "Engine Coolant"]
    var body: some View {
        GeometryReader { geo in
            VStack() {
                Text("General Inspection")
                    .font(.system(size: 27))
                    .bold()
                    .padding()
                ScrollView {
                    Image("ColorsMeaning")
                        .resizable()
                        .frame(width: geo.size.width, height: 50)
                    InspectionItem(title: "srousppdsihj")
                    InspectionItem(title: "srousppdsihj")
                    InspectionItem(title: "srousppdsihj")
                    InspectionItem(title: "srousppdsihj")
                    InspectionItem(title: "srousppdsihj")
                    InspectionItem(title: "srousppdsihj")
                    InspectionItem(title: "srousppdsihj")
                    InspectionItem(title: "srousppdsihj")
                    InspectionItem(title: "srousppdsihj")
                    InspectionItem(title: "srousppdsihj")
                    InspectionItem(title: "srousppdsihj")
                    InspectionItem(title: "srousppdsihj")
                }
            }
        }
    }
}

#Preview {
    General_Inspection()
}



