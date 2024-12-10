//
//  GetButton.swift
//  Sawan-AnswersAi-iOS
//
//  Created by Sawan Kumar on 12/9/24.
//

import SwiftUI


struct GetButton: View {
    @State private var isDownloading = false
    @State private var progress: CGFloat = 0.0
    let cta: String
    
    var body: some View {
        Button(action: {
            startDownload()
        }) {
            if isDownloading {
                
                Circle()
                    .trim(from: 0.0, to: progress)
                    .stroke(Color.blue, lineWidth: 3)
                    .frame(width: 30, height: 30)
                    .rotationEffect(.degrees(-90))
                    .animation(.easeInOut(duration: 0.5), value: progress)
            } else {
                
                Text(cta)
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(.white)
                    .frame(height: 30)
                    .padding(.horizontal, 16)
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color.gray)
                    )
            }
        }
    }
    
    func startDownload() {
        isDownloading = true
        progress = 0.0
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
            if progress < 1.0 {
                progress += 0.1
            } else {
                timer.invalidate()
                isDownloading = false
            }
        }
    }
}

