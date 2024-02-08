//
//  TabView.swift
//  VinBladelNew
//
//  Created by Halas Wolff on 1/31/24.
//

import SwiftUI

struct CustomerTabs: View {
    let customerCar: vehicle
    let firstName: String
    let lastName: String
    var body: some View {
        VStack {
            TabView {
                CustomerCarSpecsView(customerCar: customerCar, firstName: firstName, lastName: lastName)
                    .tabItem {
                        Image(systemName: "car.rear.fill")
                    }
                PaymentPage()
                    .tabItem {
                        Image(systemName: "tray.fill")
                    }
                InvoicePage()
                    .tabItem {
                        Image(systemName: "paperclip.circle.fill")
                    }
                CarChecklistPage()
                    .tabItem {
                        Image(systemName: "checklist.unchecked")
                    }
            }
        }
    }
}

#Preview {
    CustomerTabs(customerCar: vehicle(customerID: "", engineDescription: "", makeDescription: "", mileage: "", modelDescription: "", numberOfCylinders: "", transmission: "", vin: "", vehicleID: "", vehicleDriveType: "", vehicleSubModel: "", year: ""), firstName: "", lastName: "")
}
