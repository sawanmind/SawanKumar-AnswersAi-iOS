//
//  ActivityView.swift
//  Sawan-AnswersAi-iOS
//
//  Created by Sawan Kumar on 12/9/24.
//

import UIKit
import SwiftUI


struct ActivityView: UIViewControllerRepresentable {
    let items: [Any]
    let excludedActivityTypes: [UIActivity.ActivityType]?
    
    func makeUIViewController(context: Context) -> UIActivityViewController {
        let activityViewController = UIActivityViewController(activityItems: items, applicationActivities: nil)
        activityViewController.excludedActivityTypes = excludedActivityTypes
        return activityViewController
    }

    func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {
       
    }
}
