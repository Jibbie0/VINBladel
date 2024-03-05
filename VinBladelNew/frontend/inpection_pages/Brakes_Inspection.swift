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
        let inspectionList: [String] = ["LF Pad", "LR Pad/Shoe", "Rear Clean/Adj", "Brake Hose(s)", "Parking Cables", "Other Brake Services", "LF Rotor / RF Rotor", "Drum LR Rotor / Drum RR Rotor", "RF Pad", "RR Pad"]
            VStack {
                InspectionList(inspectionList: inspectionList, arrayTitle: "brakes")
                Image("ColorsMeaning")
                    .resizable()
                    .frame(width: 900, height: 90)
                    .padding()
            }
    }
}
