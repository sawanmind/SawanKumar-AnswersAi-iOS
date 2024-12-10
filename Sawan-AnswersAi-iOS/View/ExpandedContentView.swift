//
//  ExpandedContentView.swift
//  Sawan-AnswersAi-iOS
//
//  Created by Sawan Kumar on 12/9/24.
//

import SwiftUI

struct ExpandedContentView: View {
    let content: Content
    @Binding var selectedContent: Content?
    let animationNamespace: Namespace.ID
    @State private var isShareSheetPresented = false
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ScrollView {
                VStack {
                    ExpandedTopCardView(content: content)
                        .frame(height: 500)

                    DetailContentView(content: content)
                    
                    ShareButton(isShareSheetPresented: $isShareSheetPresented)
                     .sheet(isPresented: $isShareSheetPresented) {
                         ActivityView(
                            items: ["Check out this amazing content!", URL(string: "https://example.com")!],
                            excludedActivityTypes: [.postToFacebook, .postToTwitter]
                         )
                        }

                    Spacer()
                }
            }
            .padding(.bottom, 100)
            
            Button(action: {
                withAnimation {
                    selectedContent = nil
                }
            }) {
                Image(systemName: "xmark.circle.fill")
                    .foregroundColor(.white)
                    .font(.title2)
                    .padding()
            }
            .padding([.top, .trailing], 16)
            .padding([.top], 24)
        }
        .background(
            Color.white
        )
        .ignoresSafeArea()
    }
}



struct ExpandedTopCardView: View {
    let content: Content
    
    var body: some View {
        ZStack {
            Image(content.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width)
                .clipped()
                
            
            LinearGradient(
                gradient: Gradient(colors: [
                    Color.black.opacity(0.4),
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
            }
        }
        .frame(width: UIScreen.main.bounds.width)
    }
}

struct DetailContentView: View {
    let content: Content
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Quick Tip: ")
                .font(.headline)
                .fontWeight(.bold)
            + Text(content.content1)
                .font(.body)

            Text("Meet the Creator: ")
                .font(.headline)
                .fontWeight(.bold)
            
            + Text(content.content2)
                .font(.body)
        }
        .padding()
        .cornerRadius(10)
    }
}

