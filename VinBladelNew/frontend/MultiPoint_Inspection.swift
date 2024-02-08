//
//  MultiPoint_Inspection.swift
//  VinBladelNew
//
//  Created by James Balek on 1/23/24.
//

import Foundation

import SwiftUI

struct MultipointView: View {
    var body: some View {
        Text("Green: OK")
            .font(.system(size: 18))
        Text("Yellow: 1.The part is close to the end of its useful life     2. To address a customer need, convenience, or request      3. To comply wirh maintenance recommended by the vehicle's OEM          4. Technician's recommendation based on substantial and informed experience")
            .font(.system(size: 18))
        Text("Red: 1. Part no longer performs intended purpose      2. Part does not meet a design specification    3. Part is missing")
            .font(.system(size: 18))
    }
}
