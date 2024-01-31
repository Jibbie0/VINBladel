//
//  CustomerCarsView.swift
//  VinBladelNew
//
//  Created by Halas Wolff on 1/25/24.
//

import SwiftUI
import FirebaseDatabase

struct CustomerCarsView: View {
    @ObservedObject var firebaseClass = FirebaseClass()
    @State var currentCustomer: customer
    var body: some View {
        List {
            ForEach(firebaseClass.carArray, id: \.self) { car in
                if car.customerID == currentCustomer.id {
                    NavigationLink("\(car.year) \(car.modelDescription)") {
                        CustomerTabs(customerCar: car, firstName: currentCustomer.firstName, lastName: currentCustomer.lastName)
                    }
                }
            }
        }
        .navigationTitle("\(currentCustomer.lastName), \(currentCustomer.lastName)")
    }
}

#Preview {
    CustomerCarsView(currentCustomer: customer(addr1: "", addr2: "", city: "", country: "", email: "", firstName: "", homePhone: "", id: "", key: "", lastName: "", state: "", title: "", workPhone: "", zipCode: ""))
}
