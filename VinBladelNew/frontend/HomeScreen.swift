//
//  HomeScreen.swift
//  VinBladelNew
//
//  Created by Ali Alchikh Ibrahim on 2/6/24.
//

import Foundation
import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationStack {
            Text("Home Screen")
            NavigationLink(destination: ScanVinPage()) {
                Text("Scan Vin")
            }
            NavigationLink(destination: ManualVinPage()) {
                Text("Enter Vin")
            }
            NavigationLink(destination: CustomerListView()) {
                Text("Customer List View")
            }
        }
    }
}

