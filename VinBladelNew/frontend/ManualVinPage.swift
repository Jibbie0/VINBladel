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
    var body: some View {
        GeometryReader { geo in
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("VinBladel")
                            .font(.system(size: 32))
                            .bold()
                        TextField("Enter Car Vin", text: $carVin)
                            .frame(width: geo.size.width * 0.7, height: 35)
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .clipShape(RoundedRectangle(cornerRadius: 3.0))
                        
                        Button {
                            // code for the vin
                        } label: {
                            Text("Submit")
                                .frame(width: geo.size.width * 0.7, height: 35)
                                .padding()
                                .background(Color.orange.opacity(0.8))
                                .clipShape(RoundedRectangle(cornerRadius: 3.0))
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
