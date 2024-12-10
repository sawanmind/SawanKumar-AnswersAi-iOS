//
//  ShareButton.swift
//  Sawan-AnswersAi-iOS
//
//  Created by Sawan Kumar on 12/9/24.
//

import SwiftUI


struct ShareButton: View {
    @Binding var isShareSheetPresented: Bool
    
    var body: some View {
        Button(action: {
            isShareSheetPresented = true
        }) {
            HStack {
                Image(systemName: "square.and.arrow.up")
                    .font(.system(size: 18, weight: .bold))
                Text("Share Story")
                    .font(.headline)
                    .fontWeight(.medium)
            }
            .padding()
            .frame(width: 170, height: 50)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(8)
        }
    }
}
