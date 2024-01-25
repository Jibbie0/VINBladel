//
//  CustomerCarSpecsView.swift
//  VinBladelNew
//
//  Created by Halas Wolff on 1/25/24.
//

import SwiftUI

struct CustomerCarSpecsView: View {
    let customerCar:vehicle
    var body: some View {
        VStack {
            Text("VIN: \(customerCar.vin)")
            Text("Make: \(customerCar.makeDescription)")
            Text("Model: \(customerCar.modelDescription)")
            Text("Submodel: \(customerCar.vehicleSubModel)")
            Text("Model Year: \(customerCar.year)")
            Text("Engine (L) \(customerCar.engineDescription)")
            Text("Cylinders: \(customerCar.numberOfCylinders)")
            Text("Transmission: \(customerCar.transmission)")
            Text("Drive Type: \(customerCar.vehicleDriveType)")
            Text("Mileage: \(customerCar.mileage)")
        }
    }
}

#Preview {
    CustomerCarSpecsView(customerCar: vehicle(customerID: "", engineDescription: "", makeDescription: "", mileage: "", modelDescription: "", numberOfCylinders: "", transmission: "", vin: "", vehicleID: "", vehicleDriveType: "", vehicleSubModel: "", year: ""))
}
