//
//  Tire_Inspection.swift
//  VinBladelNew
//
//  Created by Ali AI on 2/22/24.
//

import Foundation
import FirebaseDatabase
import SwiftUI

struct Tire_Inspection: View {
    @State var inspectionList: [String] = ["Left Front", "Left Rear", "Right Front", "Right Rear", "Spare", "Tire Maintenance", "Alignment Check"]
    var body: some View {
            VStack {
                Text("Tire Inspection")
                    .font(.system(size: 27))
                    .bold()
                    .padding()
                Image("ColorsMeaning")
                    .resizable()
                    .frame(width: 900, height: 90)
                    .padding()
                ScrollView {
                    InspectionList(inspectionList: inspectionList, arrayTitle: "tire")
                } 
            }
    }
}
