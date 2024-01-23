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
    @Published var customers:[customer] = []
    let ref = Database.database().reference()
    
    init() {
        pullFromFirebase()
    }
    
    func pullFromFirebase() {
        ref.child("customers").getData { myError, myDataSnapshot in
            for item in myDataSnapshot?.children.allObjects as! [DataSnapshot] {
                let addr1: String = item.childSnapshot(forPath: "Customer Addr1").value as! String
                let addr2: String = item.childSnapshot(forPath: "Customer Addr2").value as! String
                let city: String = item.childSnapshot(forPath: "Customer City").value as! String
                let country: String = item.childSnapshot(forPath: "Customer Country").value as! String
                let email: String = item.childSnapshot(forPath: "Customer Email").value as! String
                let firstName: String = item.childSnapshot(forPath: "Customer First Name").value as! String
                let homePhone: String = item.childSnapshot(forPath: "Customer Home Phone").value as! String
                let id: String = item.childSnapshot(forPath: "Customer ID").value as! String
                let key: String = item.childSnapshot(forPath: "Customer Key").value as! String
                let lastName: String = item.childSnapshot(forPath: "Customer Last Name").value as! String
                let state: String = item.childSnapshot(forPath: "Customer State").value as! String
                let title: String = item.childSnapshot(forPath: "Customer Title").value as! String
                let workPhone: String = item.childSnapshot(forPath: "Customer Work Phone").value as! String
                let zipCode: String = item.childSnapshot(forPath: "Customer Zip Code").value as! String
                
                self.customers.append(customer(addr1: addr1, addr2: addr2, city: city, country: country, email: email, firstName: firstName, homePhone: homePhone, id: id, key: key, lastName: lastName, state: state, title: title, workPhone: workPhone, zipCode: zipCode))
            }
        }
    }
}

struct customer: Hashable, Codable {
    let addr1: String
    let addr2: String
    let city: String
    let country: String
    let email: String
    let firstName: String
    let homePhone: String
    let id: String
    let key: String
    let lastName: String
    let state: String
    let title: String
    let workPhone: String
    let zipCode: String
}
