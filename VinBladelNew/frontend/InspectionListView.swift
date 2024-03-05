//
//  InspectionListView.swift
//  VinBladelNew
//
//  Created by Halas Wolff on 2/14/24.
//

import Foundation
import SwiftUI

struct InspectionList: View {
    let inspectionList:[String]
    let arrayTitle: String
    @State var inspectionChoices:[ChoiceStruct] = []
    @ObservedObject var inspectionData = InspectionDataClass()
    var body: some View {
        VStack {
            HStack {
                Spacer()
                    .frame(width: 250)
                Text("OK")
                    .foregroundStyle(.green)
                Text("SUG")
                    .foregroundStyle(.orange)
                Text("REQ")
                    .foregroundStyle(.red)
                Spacer()
                    .frame(width: 135)
                Text("Why Recommend")
            }
            .font(.subheadline)
            .font(.caption)
            ForEach(inspectionList, id: \.self) { item in
                InspectionItem(title: item, choices: $inspectionChoices)
            }
            Button(action: {
                inspectionData.saveArray(array: inspectionChoices, arrayTitle: arrayTitle)
            }, label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 10.0)
                        .frame(width: 100, height: 35)
                        .foregroundStyle(.orange)
                    Text("Save")
                        .foregroundStyle(.white)
                        .bold()
                }
            })
        }
        .onAppear(perform: {
            inspectionChoices = createArray()
            print(inspectionChoices)
        })
    }
    func createArray() -> [ChoiceStruct] {
    var newArray:[ChoiceStruct] = []
        for item in inspectionList {
            newArray.append(ChoiceStruct(title: item, choice: "null"))
        }
        return newArray
    }
}

#Preview {
    InspectionList(inspectionList: ["null", "null"], arrayTitle: "null")
}

struct ChoiceStruct {
    let title: String
    var choice: String
}

struct ChoiceStruct {
    let title: String
    var choice: String
}
