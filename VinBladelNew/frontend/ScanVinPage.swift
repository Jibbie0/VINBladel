//
//  ScanVinPage.swift
//  VinBladelNew
//
//  Created by Ali Alchikh Ibrahim on 2/2/24.
//

import Foundation
import SwiftUI
import PhotosUI

struct ScanVinPage: View {
    @State private var showCamera = false
    @State private var imageSelected: UIImage?
    @State var image: UIImage?
    
    var body: some View {
        Text("Scan VIN Page")
            .font(.system(size: 30))
        Button {
            self.showCamera.toggle()
        } label: {
            Text("Open Camera")
        }
        .fullScreenCover(isPresented: self.$showCamera) {
            accessCameraView(selectedImage: self.$imageSelected)
        }
        
        if let imageSelected{
            Image(uiImage: imageSelected)
                .resizable()
                .scaledToFit()
        }
    }
}

class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    var picker: accessCameraView
    
    init(picker: accessCameraView) {
        self.picker = picker
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let selectedImage = info[.originalImage] as? UIImage else { return }
        self.picker.selectedImage = selectedImage
        self.picker.isPresented.wrappedValue.dismiss()
    }
}

struct accessCameraView: UIViewControllerRepresentable {
    
    @Binding var selectedImage: UIImage?
    @Environment(\.presentationMode) var isPresented
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .camera
        imagePicker.allowsEditing = true
        imagePicker.delegate = context.coordinator
        return imagePicker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
        
    }

    func makeCoordinator() -> Coordinator {
        return Coordinator(picker: self)
    }
}

#Preview {
    ScanVinPage()
}
