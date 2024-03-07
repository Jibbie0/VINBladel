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
    @State var buttonStates:[Bool] = [false, false, false]
    @Binding var choices:[ChoiceStruct]
    var body: some View {
        HStack {
            HStack {
                Text(title)
                    .padding(EdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 15))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.title)
                ForEach(buttonStates.indices, id: \.self) { index in
                    InspectionButton(buttonState: buttonStates[index], buttonNumber: index)
                        .onTapGesture {
                            switch index {
                            case 0:
                                buttonStates = [true, false, false]
                                sendStateBack(choice: "OK")
                            case 1:
                                buttonStates = [false, true, false]
                                sendStateBack(choice: "SUG")
                            case 2:
                                buttonStates = [false, false, true]
                                sendStateBack(choice: "REQ")
                            default:
                                buttonStates = [false, false, false]
                                print("ERROR")
                            }
                        }
                }
                TextField("Notes", text: $notesField)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .multilineTextAlignment(.center)
                    .textFieldStyle(.roundedBorder)
                    .font(.system(size: 22))
            }
            .border(Color.black, width: 1)
            .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
        }
    }
    func sendStateBack(choice: String) {
        for index in choices.indices {
            if choices[index].title == title {
                choices[index].choice = choice
            }
        }
    }
}

struct InspectionButton: View {
    let buttonState: Bool
    let buttonNumber: Int
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 30, height: 30)
                .foregroundStyle(buttonColor())
            Rectangle()
                .frame(width: 25, height: 25)
                .foregroundStyle(.white)
            Image(systemName: buttonState ? "xmark" : "")
                .resizable()
                .frame(width: 10, height: 10)
        }
    }
    func buttonColor() -> Color {
        switch buttonNumber {
        case 0:
            return .green
        case 1:
            return .yellow
        case 2:
            return .red
        default:
            return .black
        }
    }
}
