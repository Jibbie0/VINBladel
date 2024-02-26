//
//  TheObservedObject.swift
//  VinBladelNew
//
//  Created by Ali Alchikh Ibrahim on 1/26/24.
//

import Foundation
import SwiftUI

class DataStruct: ObservableObject {
    @Published var generalInspection = [DataStruct]()
    
    init(generalInspection: [DataStruct] = [DataStruct]()) {
        self.generalInspection = generalInspection
    }
}
