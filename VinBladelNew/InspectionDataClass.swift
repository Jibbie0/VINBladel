//
//  InspectionDataClass.swift
//  VinBladelNew
//
//  Created by Halas Wolff on 3/5/24.
//

import Foundation
import SwiftUI

class InspectionDataClass: ObservableObject {
    @Published var generalInspection:[ChoiceStruct] = []
    @Published var brakesInspection:[ChoiceStruct] = []
    @Published var underCarInspection:[ChoiceStruct] = []
    @Published var tireInspection:[ChoiceStruct] = []
    @Published var multiPointInspection:[ChoiceStruct] = []
    
    func saveArray(array:[ChoiceStruct], arrayTitle:String) {
        switch arrayTitle {
        case "general":
            generalInspection = array
            print(generalInspection)
        case "brakes":
            brakesInspection = array
            print(brakesInspection)
        case "underCar":
            underCarInspection = array
            print(underCarInspection)
        case "tire":
            tireInspection = array
            print(tireInspection)
        case "multiPoint":
            multiPointInspection = array
            print(multiPointInspection)
        default:
            return
        }
    }
}
