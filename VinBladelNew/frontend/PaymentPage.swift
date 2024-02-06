//
//  PaymentPage.swift
//  VinBladelNew
//
//  Created by Halas Wolff on 1/31/24.
//

import SwiftUI
import FirebaseDatabase

struct PaymentPage: View {
    let ref = Database.database().reference()
    @ObservedObject var firebaseClass = FirebaseClass()
    @State var currentPart: String = ""
    @State var parts:[partItem] = []
    var body: some View {
        VStack {
            VStack {
                Text("\(firebaseClass.currentPerson.lastName), \(firebaseClass.currentPerson.firstName)")
                Rectangle()
                    .foregroundStyle(.orange)
                    .frame(width: 5000, height: 10)
                Table(parts) {
                    TableColumn("Quantity", value: \.quantity)
                    TableColumn("Description", value: \.description)
                    TableColumn("Price", value: \.price)
                    TableColumn("Total", value: \.total)
                }
            }
            HStack {
                VStack {
                    Rectangle()
                        .foregroundStyle(.orange)
                        .frame(width: 5000, height: 8, alignment: .center)
                    Picker("Work", selection: $currentPart, content: {
                        ForEach(firebaseClass.parts, id: \.self) { part in
                            Text("\(part)")
                        }
                    })
                    .padding()
                    .pickerStyle(.wheel)
                    .onChange(of: currentPart) {
                        firebaseClass.pullCurrentPart(curPart: currentPart)
                    }
                }
                .frame(width: UIScreen.main.bounds.width / 2, height: 200)
                .padding()
                Rectangle()
                    .foregroundStyle(.orange)
                    .frame(width: 10, height: 200)
                VStack {
    //                Spacer()
    //                    .frame(height: 40)
                    List {
                        ForEach(firebaseClass.currentPartWork, id: \.self) { work in
                            Button(action: {
                                var newPart: partItem = partItem(quantity: "\(1)", description: "\(work.partWork)", price: "\(work.price)", total: "\(work.price)")
                                
                                parts.append(newPart)
                            }, label: {
                                Text("\(work.partWork): $\(work.price)")
                            })
                        }
                    }
                    .scrollContentBackground(.hidden)
                    .padding()
                    Rectangle()
                        .foregroundStyle(.orange)
                        .frame(width: 5000, height: 8)
                }
                .frame(width: UIScreen.main.bounds.width / 2, height: 200)
            }
        }
    }
}

struct partItem: Identifiable {
    let id = UUID()
    let quantity: String
    let description: String
    let price: String
    let total: String
}

#Preview {
    PaymentPage()
}
