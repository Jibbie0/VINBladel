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
    @State var notesField: String = ""
    var body: some View {
        HStack {
            HStack {
                Text(title)
                    .padding(EdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 15))
                    .frame(width: 150)
                    .font(.title3)
                InspectionButton()
                InspectionButton()
                InspectionButton()
                TextField("", text: $notesField)
                    .frame(width: 200)
                    .multilineTextAlignment(.center)
            }
            .border(Color.black, width: 1)
            .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
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
                    .frame(width: 25, height: 25)
                    .foregroundStyle(.green)
                Rectangle()
                    .frame(width: 15, height: 15)
                    .foregroundStyle(.white)
                Text(buttonPress ? "X" : "")
                    .foregroundStyle(.black)
            }
        })
    }
}

#Preview {
    InspectionItem(title: "Wiper Baldes")
}
