//
//  TabView.swift
//  VinBladelNew
//
//  Created by James Balek on 1/25/24.
//

import Foundation

import Foundation

import SwiftUI

struct TabView: View {
    var body: some View {
        TabView {
            GeneralView()
                .tabItem {
                    Label("General Inspection")
                }
            TireView()
                .tabItem {
                    Label("Tire Inspection")
                }
            MultipointView()
                .tabItem {
                    Label("Multipoint Inspection")
                }
            UnderCarView()
                .tabItem {
                    Label("UnderCar Inspection")
                }
            BrakesView()
                .tabItem{
                    Label("Brakes Inspection")
                }
            
        }
    }
}
