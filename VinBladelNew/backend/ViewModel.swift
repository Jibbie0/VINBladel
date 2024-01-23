//
//  ViewModel.swift
//  VinBladelNew
//
//  Created by Ali Alchikh Ibrahim on 1/23/24.
//

import Foundation
import SwiftUI

func ViewModel(completionHandler: @escaping ([DataStruct]) -> Void) {
    let url = URL(string: "")!
    
//    let task = URLSession.shared.dataTask(with: url) { data, response, error in
//        if let error = error {
//            print("Error fetching car parts")
//            return
//        }
//        guard let responded = response as? HTTPURLResponse,
//              (200...299).contains(response.hashValue) else {
//            print("Error (Unexpected status code: \(response))")
//            return
//        }
//        if let data = data,
//           let finally = try? JSONDecoder().decode(finally.self, from: data) {
//            completionHandler(finall.results ?? [])
//        }
//    }
//    
//    task.resume()
  }
