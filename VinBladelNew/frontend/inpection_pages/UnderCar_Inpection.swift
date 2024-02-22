//
//  UnderCar_Inspection.swift
//  VinBladelNew
//
//  Created by James Balek on 1/23/24.
//

import Foundation

import SwiftUI

struct UnderCar_Inspection: View {
    var body: some View {
        let inspectionList: [String] = ["Exhaust Sytem", "U-Joint", "Idler/Pitman Arm", "Center Link", "Bushings", "Link Pins", "Tie Rod Ends", "Ball Joints", "Rack & Pinion Assembly", "CV Boots/Joints", "Wheel Bearings", "Struts", "Shocks"]
            VStack {
                InspectionList(inspectionList: inspectionList)
                Image("ColorsMeaning")
                    .resizable()
                    .frame(width: 500, height: 50)
                    .padding()
            }
    }
}
