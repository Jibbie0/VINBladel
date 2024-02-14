//
//  InspectionItemView.swift
//  VinBladelNew
//
//  Created by Halas Wolff on 2/14/24.
//

import Foundation
import SwiftUI

struct InspectionItem: View {
    let title: String
    var body: some View {
        HStack {
            Text(title)
                .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                .frame(width: 150)
            InspectionButton()
            InspectionButton()
            InspectionButton()
            Spacer()
        }
    }
}

struct InspectionButton: View {
    @State var buttonPress: Bool = false
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
                    .foregroundStyle(.black)
            }
        })
    }
}

#Preview {
    InspectionItem(title: "Wiper Baldes")
}
