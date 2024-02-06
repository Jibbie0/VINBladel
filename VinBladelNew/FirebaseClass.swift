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

class FirebaseClass: ObservableObject {
    @Published var customers:[customer] = []
    @Published var carArray:[vehicle] = []
    @Published var parts:[String] = []
    @Published var currentPartWork:[partWork] = []
    @Published var currentPerson:customer = customer(addr1: "", addr2: "", city: "", country: "", email: "", firstName: "", homePhone: "", id: "", key: "", lastName: "", state: "", title: "", workPhone: "", zipCode: "")
    let ref = Database.database().reference()
    
    init() {
        pullFromFirebase()
        retrieveCustomerVehicles()
        retrieveParts()
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
    
    func retrieveCustomerVehicles() {
        ref.child("vehicles").getData { myError, myDataSnapshot in
            for car in myDataSnapshot?.children.allObjects as! [DataSnapshot] {
                        let customerID: String = car.childSnapshot(forPath: "Customer ID").value as! String
                        let engineDescription: String = car.childSnapshot(forPath: "Engine Description").value as! String
                        let makeDescription: String = car.childSnapshot(forPath: "Make Description").value as! String
                        let mileage: String = car.childSnapshot(forPath: "Mileage").value as! String
                        let modelDescription: String = car.childSnapshot(forPath: "Model Description").value as! String
                        let numberOfCylinders: String = car.childSnapshot(forPath: "Number of Cylinders").value as! String
                        let transmission: String = car.childSnapshot(forPath: "Transmission").value as! String
                        let vin: String = car.childSnapshot(forPath: "VIN").value as! String
                        let vehicleID: String = car.childSnapshot(forPath: "Vehicle ID").value as! String
                        let vehicleDriveType: String = car.childSnapshot(forPath: "VehicleDriveType").value as! String
                        let vehicleSubModel: String = car.childSnapshot(forPath: "VehicleSubModel").value as! String
                        let year: String = car.childSnapshot(forPath: "Year").value as! String
                        
                        self.carArray.append(vehicle(customerID: customerID, engineDescription: engineDescription, makeDescription: makeDescription, mileage: mileage, modelDescription: modelDescription, numberOfCylinders: numberOfCylinders, transmission: transmission, vin: vin, vehicleID: vehicleID, vehicleDriveType: vehicleDriveType, vehicleSubModel: vehicleSubModel, year: year))
            }
        }
    }
    
    func retrieveParts() {
        ref.child("parts").getData { myError, myDataSnapshot in
            for part in myDataSnapshot?.children.allObjects as! [DataSnapshot] {
                let myPart: String = part.key
                self.parts.append(myPart)
            }
        }
    }
    
    func pullCurrentPart(curPart: String) {
        self.currentPartWork.removeAll()
        ref.child("parts").child("\(curPart)").getData { myError, myDataSnapshot in
            for cur in myDataSnapshot?.children.allObjects as! [DataSnapshot] {
                let name: String = cur.key
                if let price = cur.value as? Int {
                    self.currentPartWork.append(partWork(partWork: name, price: price))
                } else {
                    
                }
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

struct vehicle: Hashable, Codable {
    let customerID: String
    let engineDescription: String
    let makeDescription: String
    let mileage: String
    let modelDescription: String
    let numberOfCylinders: String
    let transmission: String
    let vin: String
    let vehicleID: String
    let vehicleDriveType: String
    let vehicleSubModel: String
    let year: String
}
                                            
struct partWork: Hashable, Codable {
    let partWork: String
    let price: Int
}
