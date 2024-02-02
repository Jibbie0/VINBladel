//
//  TabView.swift
//  VinBladelNew
//
//  Created by James Balek on 1/25/24.
//

import Foundation

import Foundation

import SwiftUI

struct TabsScreen: View {
    var body: some View {
        TabView {
            GeneralView()
                .tabItem {
                    Label("Car Info", systemImage: "car.fill")
                }
            TireView()
                .tabItem {
                    Label("Payment", systemImage: "pencil")
                }
            MultipointView()
                .tabItem {
                    Label("Receipt", systemImage: "newspaper.fill")
                }
            UnderCarView()
                .tabItem {
                    Label("Invoice", systemImage: "paperplane.fill")
                }
            BrakesView()
                .tabItem{
                    Label("Checklist", systemImage: "checklist")
                }
        }
    }
}
