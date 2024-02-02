//
//  ContentView.swift
//  VinBladelNew
//
//  Created by Halas Wolff on 1/19/24.
//

import SwiftUI
import Foundation

struct ContentView: View {
    @ObservedObject var firebaseClass = FirebaseClass()
    var body: some View {
        CustomerListView()
    }
}

#Preview {
    ContentView()
}
