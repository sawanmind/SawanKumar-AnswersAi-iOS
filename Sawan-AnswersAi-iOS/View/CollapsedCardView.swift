//
//  CollapsedCardView.swift
//  Sawan-AnswersAi-iOS
//
//  Created by Sawan Kumar on 12/9/24.
//

import SwiftUI

struct CollapsedCardView: View {
    let content: Content
    
    var body: some View {
        ZStack {
            Image(content.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width - 32,
                       height: UIScreen.main.bounds.width * 1.1)
                .clipped()
                .cornerRadius(20)
            
            
            LinearGradient(
                gradient: Gradient(colors: [
                    Color.black.opacity(0.3),
                    Color.clear
                ]),
                startPoint: .bottom,
                endPoint: .top
            )
            .blur(radius: 15)
            .cornerRadius(20)
      
            VStack(alignment: .leading, spacing: 8) {
                Spacer()
                VStack(alignment: .leading, spacing: 8) {
                    
                    Text(content.title)
                        .font(.caption)
                        .foregroundColor(.white.opacity(0.9))
                        .padding(.horizontal)
                    
                    Text(content.subtitle)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                    
                    Text(content.description)
                        .font(.subheadline)
                        .foregroundColor(.white.opacity(0.9))
                        .padding(.horizontal)
                    
                    
                    HStack {
                        
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.gray)
                            .frame(width: 50, height: 50)
                            .overlay(
                                Image(systemName: "r.circle")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 30, height: 30)
                                    .foregroundColor(.white)
                            )
                        
                        
                        VStack(alignment: .leading, spacing: 4) {
                            Text(content.subtitle1)
                                .font(.system(size: 16, weight: .bold))
                                .foregroundColor(.white)
                                .lineLimit(2)
                            
                            Text(content.subtitle2)
                                .font(.system(size: 12, weight: .medium))
                                .foregroundColor(.white.opacity(0.8))
                        }
                        
                        Spacer()
                        
                        
                        VStack() {
                            
                            GetButton(cta: content.cta)
                            
                            Text(content.ctasubtitle)
                                .font(.system(size: 10))
                                .foregroundColor(.white.opacity(0.7))
                                .padding(.top, 2)
                        }
                    }
                    .padding(20)
                }
                .background(Color.black.opacity(0.4).blur(radius: 15))
            }
        }
        .frame(width: UIScreen.main.bounds.width - 32,
               height: UIScreen.main.bounds.width * 1.1)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .shadow(color: Color.black.opacity(0.3), radius: 8, x: 0, y: 4)
    }
}


