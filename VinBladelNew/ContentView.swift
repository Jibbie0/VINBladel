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
    @ObservedObject var firebaseClass = FirebaseClass()
    var body: some View {
<<<<<<< HEAD
        Image("Motorist.org")
        List() {
            ForEach(firebaseFunctions.customers, id: \.self) { Customer in
                Text("\(Customer.firstName)")
            }
        }
=======
        CustomerListView()
>>>>>>> main
    }
}

#Preview {
    ContentView()
}
