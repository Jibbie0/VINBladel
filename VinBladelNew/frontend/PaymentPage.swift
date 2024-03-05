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
    @State var showingAlert: Bool = false
    @State var alertField: String = ""
    @State var showingEditAlert: Bool = false
    @State var email = "hi@gmail.com"
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(destination: Summary_Page(clientEmail: email)) {
                    Text("Continue to Summary")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.orange)
                        .foregroundStyle(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 3.0))
                        .bold()
                }
                Rectangle()
                    .foregroundStyle(.orange)
                    .frame(width: 5000, height: 10)
                Table(parts) {
                    TableColumn("Quantity", value: \.quantity)
                    TableColumn("Description", value: \.description)
                    TableColumn("Price", value: \.price)
                    TableColumn("Total", value: \.total)
                    TableColumn("Edit") { Identifiable in
                        Button("Edit") {
                            showingEditAlert.toggle()
                        }
                        .alert("Edit", isPresented: $showingEditAlert) {
                            TextField("Quantity", text: $alertField)
                            HStack {
                                Button("Delete") {
                                    alertField = ""
                                    for i in parts.indices {
                                        if parts[i].id == Identifiable.id {
                                            parts.remove(at: i)
                                        }
                                    }
                                }
                                .foregroundStyle(.red)
                                Button("OK") {
                                    for i in parts.indices {
                                        if parts[i].id == Identifiable.id {
                                            let total = (Int(alertField) ?? 1) * (Int(parts[i].price) ?? 1)
                                            parts[i].quantity = alertField
                                            parts[i].total = String(total)
                                        }
                                    }
                                    alertField = ""
                                }
                            }
                        }
                    }
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
                                showingAlert.toggle()
                            }, label: {
                                Text("\(work.partWork): $\(work.price)")
                            })
                            .alert("Add \(work.partWork)", isPresented: $showingAlert) {
                                TextField("Quantity", text: $alertField)
                                Button("Add") {
                                    let totalPrice = (Int(alertField) ?? 1) * Int(work.price)
                                    let newPart: partItem = partItem(quantity: "\(alertField)", description: "\(work.partWork)", price: "\(work.price)", total: "\(totalPrice)")
                                    
                                    parts.append(newPart)
                                    
                                    alertField = ""
                                }
                            }
                        }
                    }
                }
                HStack {
                    List {
                        ForEach(firebaseClass.currentPartWork) { part in
                            Button {
                                showingAlert.toggle()
                            } label: {
                                Text("\(part.partWork): $\(part.price)")
                            }
                            .alert("Add \(part.partWork)", isPresented: $showingAlert) {
                                TextField("Quantity", text: $alertField)
                                Button("Add") {
                                    let totalPrice = (Int(alertField) ?? 1) * Int(part.price)
                                    let newPart: partItem = partItem(quantity: "\(alertField)", description: "\(part.partWork)", price: "\(part.price)", total: "\(totalPrice)")
                                    
                                    parts.append(newPart)
                                    
                                    alertField = ""
                                }
                            }
                        }
                    }
                    .scrollContentBackground(.hidden)
                }
                .frame(width: UIScreen.main.bounds.width / 2, height: 200)
            }
        }
    }
}


struct partItem: Identifiable {
    let id = UUID()
    var quantity: String
    let description: String
    let price: String
    var total: String
}

#Preview {
    PaymentPage()
}
