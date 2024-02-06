//
//  PaymentPage.swift
//  VinBladelNew
//
//  Created by Halas Wolff on 1/31/24.
//

import SwiftUI
import FirebaseDatabase

struct PaymentPage: View {
    let ref = Database.database().reference()
    @ObservedObject var firebaseClass = FirebaseClass()
    var body: some View {
        VStack {
            ForEach(firebaseClass.parts, id: \.self) { part in
                Button(part) {
                    firebaseClass.pullCurrentPart(curPart: part)
                }
            }
            ForEach(firebaseClass.currentPartWork, id: \.self) { work in
                Text("\(work.partWork): \(work.price)")
            }
        }
        .navigationTitle("\(firebaseClass.currentPerson.lastName), \(firebaseClass.currentPerson.firstName)")
    }
}

#Preview {
    PaymentPage()
}
