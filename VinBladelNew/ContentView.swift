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
    @State var customers:[String] = []
    var body: some View {
        List() {
            ForEach(0...10, id: \.self) { Customer in
                Text("\(Customer)")
            }
        }
        .onAppear(perform: {
            customers = customersPull()
        })
    }
    func customersPull() -> [String] {
        return [""]
    }
}

#Preview {
    ContentView()
}
