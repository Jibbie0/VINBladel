//
//  ContentView.swift
//  VinBladelNew
//
//  Created by Halas Wolff on 1/19/24.
//

import SwiftUI
import Foundation
import FirebaseDatabase

struct ContentView: View {
    @ObservedObject var firebaseFunctions = FirebaseFunctions()
    var body: some View {
        List() {
            ForEach(firebaseFunctions.customers, id: \.self) { Customer in
                Text("\(Customer.firstName)")
            }
        }
    }
}

#Preview {
    ContentView()
}
