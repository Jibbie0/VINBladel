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
    @State var inspectionList: [String] = ["LF Pad", "LR Pad/Shoe", "Rear Clean/Adj", "Brake Hose(s)", "Parking Cables", "Other Brake Services", "LF Rotor / RF Rotor", "Drum LR Rotor / Drum RR Rotor", "RF Pad", "RR Pad"]
    var body: some View {
            VStack {
                Text("Brakes Inspection")
                    .font(.system(size: 27))
                    .bold()
                    .padding()
                Image("ColorsMeaning")
                    .resizable()
                    .frame(width: 900, height: 90)
                    .padding()
                ScrollView {
                    InspectionList(inspectionList: inspectionList, arrayTitle: "brakes")
                }
            }
    }
}
