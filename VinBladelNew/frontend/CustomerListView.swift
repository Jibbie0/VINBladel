//
//  CusomerListView.swift
//  VinBladelNew
//
//  Created by Halas Wolff on 1/25/24.
//

import SwiftUI
import FirebaseDatabase

struct CustomerListView: View {
    @ObservedObject var firebaseClass = FirebaseClass()
    var body: some View {
        NavigationStack {
            List() {
                ForEach(firebaseClass.customers, id: \.self) { Customer in
                    NavigationLink("\(Customer.lastName), \(Customer.firstName)") {
                        CustomerCarsView(currentCustomer: Customer)
                    }
                }
            }
        }
    }
}

#Preview {
    CustomerListView()
}
