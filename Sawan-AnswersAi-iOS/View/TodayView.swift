//
//  TodayView.swift
//  Sawan-AnswersAi-iOS
//
//  Created by Sawan Kumar on 12/9/24.
//

import SwiftUI

#Preview {
    TabBarView()
}

struct TodayView: View {
    @StateObject private var viewModel = ContentViewModel()
    @State private var selectedContent: Content? = nil
    @Namespace private var animationNamespace
    
    
    var body: some View {
        ZStack {
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(viewModel.contents) { content in
                        CardBlock(content: content,
                                  selectedContent: $selectedContent,
                                  animationNamespace: animationNamespace)
                    }
                }
                .padding()
            }
            
            
            if let content = selectedContent {
                ExpandedContentView(
                    content: content,
                    selectedContent: $selectedContent,
                    animationNamespace: animationNamespace
                )
            }
        }
        .animation(.easeInOut, value: selectedContent)
    }
}

struct CardBlock: View {
    @State private var isExpanded: Bool = false
    let content: Content
    @Binding var selectedContent: Content?
    let animationNamespace: Namespace.ID
    
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .fill(Color.gray.opacity(0.2))
                .matchedGeometryEffect(id: content.id, in: animationNamespace)
            
            CollapsedCardView(content: content)
        }
        .animation(.easeInOut, value: isExpanded)
        .frame(width: UIScreen.main.bounds.width - 32)
        .onTapGesture {
            withAnimation {
                selectedContent = content
            }
        }
    }
}
