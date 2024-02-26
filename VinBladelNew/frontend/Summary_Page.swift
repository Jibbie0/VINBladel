//
//  Summary_Page.swift
//  VinBladelNew
//
//  Created by Ali AI on 1/25/24.
//

import Foundation
import SwiftUI
import FirebaseDatabase

struct Summary_Page: View {
    @ObservedObject var firebaseClass = FirebaseClass()
    var body: some View {
        NavigationStack {
            GeometryReader { geo in
                HStack {
                    VStack(alignment: .leading) {
                        Text("Your Summary")
                            .bold()
                            .font(.system(size: 27))
                            .padding(.bottom)
                        
                        Text("Your Data (Sample)")
                            .bold()
                        List {
                            ForEach(firebaseClass.customers, id: \.self) { Customer in
                                Text("\(Customer.firstName)")
                            }
                        }
                        .listStyle(PlainListStyle())
                    }
                    .padding(.top)
                    VStack {
                        VStack {
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Payment:")
                                        .font(.system(size: 24))
                                        .bold()
                                        .padding(.bottom)
                                    HStack {
                                        Text("Subtotal:")
                                        Text("$75")
                                            .bold()
                                    }
                                    .padding(.bottom, 5)
                                    HStack {
                                        Text("Tax: ")
                                        Text("(15%) | $15")
                                            .bold()
                                    }
                                    .padding(.top, 5)
                                    .padding(.bottom, 5)
                                    HStack {
                                        Text("Total:")
                                        Text("$100")
                                            .bold()
                                    }
                                    .padding(.top, 5)
                                    .padding(.bottom, 5)
                                }
                                Spacer()
                            }
                            HStack {
                                NavigationLink(destination: Main_Inspection()) {
                                    Text("Main Inspection")
                                        .frame(width: 0.8)
                                        .padding()
                                        .background(Color.orange)
                                        .foregroundStyle(Color.white)
                                        .clipShape(RoundedRectangle(cornerRadius: 3.0))
                                        .bold()
                                }
                                Spacer()
                                EmailView()
                                    .frame(width: geo.size.width * 0.3, height: 20)
                                    .padding()
                                    .background(.orange)
                                    .bold()
                                    .foregroundColor(.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
                                    Spacer()
                            }
                        }
                        .padding(.top)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .clipShape(RoundedRectangle(cornerRadius: 3.0))
                        Spacer()
                    }
                    
                }
                .padding(.leading)
                .padding(.trailing)
                
            }
        }
    }
}

