//
//  InspectionItemView.swift
//  VinBladelNew
//
//  Created by Halas Wolff on 2/14/24.
//

import Foundation
import SwiftUI

struct InspectionItem: View {
    @State var buttonOne: Bool = false
    @State var buttonTwo: Bool = false
    @State var buttonThree: Bool = false
    let title: String
    var body: some View {
        HStack {
            Text(title)
            InspectionButton(buttonPress: $buttonOne)
            InspectionButton(buttonPress: $buttonTwo)
            InspectionButton(buttonPress: $buttonThree)
        }
    }
}

struct InspectionButton: View {
    @Binding var buttonPress: Bool
    var body: some View {
        Button(action: {
            buttonPress.toggle()
        }, label: {
            ZStack {
                Rectangle()
                    .frame(width: 20, height: 20)
                    .foregroundStyle(.white)
                    .border(Color.black, width: 1)
                Text(buttonPress ? "X" : "")
            }
        })
    }
}

#Preview {
    InspectionItem(title: "Wiper Baldes")
}
