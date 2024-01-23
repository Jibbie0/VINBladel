//
//  FirebaseFunctions.swift
//  VinBladelNew
//
//  Created by Halas Wolff on 1/23/24.
//

import Foundation
import SwiftUI
import FirebaseDatabase
import FirebaseCore

class FirebaseFunctions: ObservableObject {
    @Published var customers:[String] = []
    let ref = Database.database().reference()
    
    init() {
        pullFromFirebase()
    }
    
    func pullFromFirebase() {
        ref.child("customers").getData { myError, myDataSnapshot in
            for item in myDataSnapshot?.children.allObjects as! [DataSnapshot] {
                print(item)
            }
        }
    }
}
