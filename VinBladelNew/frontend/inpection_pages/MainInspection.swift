//
//  MainInspection.swift
//  VinBladelNew
//
//  Created by James Balek on 2/22/24.
//

import Foundation
import FirebaseDatabase
import SwiftUI

struct Main_Inspection: View {
    var body: some View {
        VStack {
            NavigationLink(destination: Brakes_Inspection()) {
                Text("Scan Vin")
                    .frame(width: 0.8)
                    .padding()
                    .background(Color.orange)
                    .foregroundStyle(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 3.0))
                    .bold()
            }
            NavigationLink(destination: General_Inspection()) {
                Text("Scan Vin")
                    .frame(width: 0.8)
                    .padding()
                    .background(Color.orange)
                    .foregroundStyle(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 3.0))
                    .bold()
            }
            NavigationLink(destination: UnderCar_Inspection()) {
                Text("Scan Vin")
                    .frame(width: 0.8)
                    .padding()
                    .background(Color.orange)
                    .foregroundStyle(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 3.0))
                    .bold()
                
            }
            NavigationLink(destination: MultiPoint_Inspection()) {
                Text("Scan Vin")
                    .frame(width: 0.8)
                    .padding()
                    .background(Color.orange)
                    .foregroundStyle(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 3.0))
                    .bold()
            }
            NavigationLink(destination: Tire_Inspection()) {
                Text("Scan Vin")
                    .frame(width: 0.8)
                    .padding()
                    .background(Color.orange)
                    .foregroundStyle(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 3.0))
                    .bold()
            }
        }
    }
}
