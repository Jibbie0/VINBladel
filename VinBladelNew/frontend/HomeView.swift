//
//  HomeScreen.swift
//  VinBladelNew
//
//  Created by James Balek on 2/2/24.
//

import Foundation

import SwiftUI

struct HomeView: View {
    var body: some View {
        Image("Motorist.org")
            .frame(width: 20, height: 20)
        NavigationLink(destination: ScanVinPage()) {
            Button {
                
            } label: {
                Text("Scan Vin")
                    .font(.system(size: 30, design: .default))
            }
            }
        NavigationLink(destination: ManualVinPage()) {
            Button {
                
            } label: {
                Text("Manually Input VIN")
                    .font(.system(size: 30, design: .default))
            }
        }
        NavigationLink(destination: CustomerListView()) {
            Button {
                
            } label: {
                Text("Search By Name")
                    .font(.system(size: 30, design: .default))
            }

        }
    }
}
