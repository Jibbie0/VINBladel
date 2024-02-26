//
//  MailView.swift
//  VinBladelNew
//
//  Created by Halas Wolff on 2/26/24.
//

import Foundation
import MessageUI
import SwiftUI

struct EmailView: View {
    class MailComposeViewController: UIViewController, MFMailComposeViewControllerDelegate {
        
            static let shared = MailComposeViewController()
        
            func sendEmail() {
                if MFMailComposeViewController.canSendMail() {
                    let mail = MFMailComposeViewController()
                    mail.mailComposeDelegate = self
                    mail.setToRecipients(["test@test.com"])

                    UIApplication.shared.windows.last?.rootViewController?.present(mail, animated: true, completion: nil)
                } else {
                    // Alert
                }
            }
        
            func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
                controller.dismiss(animated: true, completion: nil)
            }
        }
        
        var body: some View {
            Button(action: {
                MailComposeViewController.shared.sendEmail()
            }, label: {
                Text("Send")
            })
        }
}
