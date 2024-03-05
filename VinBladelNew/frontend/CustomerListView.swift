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
    @State var listText: String = ""
    var body: some View {
        NavigationStack {
            Text("Choose Your Name")
                .font(.system(size: 22))
                .bold()
            List {
                if listText == ""  {
                    Text("Type in the FIRST or LAST name")
                        .font(.system(size: 22))
                } else {
                    Text("Results for \"\(listText)\"")
                        .font(.system(size: 22))
                }
                ForEach(firebaseClass.customers.filter { $0.firstName.contains(listText) || $0.lastName.contains(listText) }, id: \.self) { Customer in
                    NavigationLink("\(Customer.lastName), \(Customer.firstName)") {
                        CustomerCarsView(currentCustomer: Customer)
                            .font(.system(size: 23))
                    }
                }
            }
            .searchable(text: $listText)
            .listStyle(PlainListStyle())
        }
    }
}

#Preview {
    CustomerListView()
}
