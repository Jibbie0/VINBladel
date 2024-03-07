//
//  MainInspection.swift
//  VinBladelNew
//
//  Created by James Balek on 2/22/24.
//

import Foundation
import FirebaseDatabase
import SwiftUI

struct Main_Inspection: View {
    var body: some View {
        VStack {
            NavigationLink {
                General_Inspection()
            } label: {
                Text("General Inspection")
            }
            NavigationLink {
                Brakes_Inspection()
            } label: {
                Text("Brakes Inspection")
            }
            NavigationLink {
                UnderCar_Inspection()
            } label: {
                Text("Under Car Inspection")
            }
            NavigationLink {
                MultiPoint_Inspection()
            } label: {
                Text("Multi Point Inspection")
            }
            NavigationLink {
                Tire_Inspection()
            } label: {
                Text("Tire Inspection")
            }
        }
    }
}
