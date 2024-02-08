//
//  ScanVinPage.swift
//  VinBladelNew
//
//  Created by Ali Alchikh Ibrahim on 2/2/24.
//

import Foundation
import SwiftUI

struct ScanVinPage: View {
    var body: some View {
        Text("Scan VIN Page")
            .font(.system(size: 20))
        Button {
        
        } label: {
        Text("Open Camera")
        }
        Image("Camera")
    }
}

#Preview {
    ScanVinPage()
}
