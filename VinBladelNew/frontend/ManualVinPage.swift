//
//  ManualVinPage.swift
//  VinBladelNew
//
//  Created by Ali Alchikh Ibrahim on 2/2/24.
//

import Foundation
import SwiftUI

struct ManualVinPage: View {
    @State var carVin: String = ""
    @ObservedObject var firebaseClass = FirebaseClass()
    var body: some View {
        GeometryReader { geo in
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("VinBladel")
                            .font(.system(size: 33))
                            .bold()
                        TextField("Enter Car Vin", text: $carVin)
                            .frame(width: geo.size.width * 0.8, height: 35)
                            .padding()
                            .background(Color.gray.opacity(0.9))
                            .clipShape(RoundedRectangle(cornerRadius: 3.3))
                        
                        NavigationLink {
                            CustomerTabs(customerCar: firebaseClass.pullUsingVIN(vin: carVin), firstName: "", lastName: "")
                        } label: {
                            Text("Submit")
                                .frame(width: geo.size.width * 0.8, height: 35)
                                .padding()
                                .background(Color.orange.opacity(0.9))
                                .clipShape(RoundedRectangle(cornerRadius: 3.3))
                                .foregroundStyle(Color.white)
                        }
                    }
                    .frame(width: geo.size.width * 0.8)
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ManualVinPage()
}
