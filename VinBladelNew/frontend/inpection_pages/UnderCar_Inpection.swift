//
//  UnderCar_Inspection.swift
//  VinBladelNew
//
//  Created by James Balek on 1/23/24.
//

import Foundation
import FirebaseDatabase
import SwiftUI

struct UnderCar_Inspection: View {
    var body: some View {
        let inspectionList: [String] = ["Exhaust Sytem", "U-Joint", "Idler/Pitman Arm", "Center Link", "Bushings", "Link Pins", "Tie Rod Ends", "Ball Joints", "Rack & Pinion Assembly", "CV Boots/Joints", "Wheel Bearings", "Struts", "Shocks", "Wiper"]
            VStack {
                Text("Under Car Inspection")
                    .font(.system(size: 27))
                    .bold()
                    .padding()
                Image("ColorsMeaning")
                    .resizable()
                    .frame(width: 900, height: 90)
                    .padding()
                ScrollView {
                    InspectionList(inspectionList: inspectionList, arrayTitle: "underCar")
                }
            }
    }
}
