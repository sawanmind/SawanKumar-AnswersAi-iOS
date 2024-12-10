//
//  Content.swift
//  Sawan-AnswersAi-iOS
//
//  Created by Sawan Kumar on 12/9/24.
//

import Foundation

struct Content: Codable, Identifiable, Equatable {
    var id: String
    let title: String
    let subtitle: String
    let description: String
    let subtitle1: String
    let subtitle2: String
    let imageName: String
    let cta: String
    let ctasubtitle: String
    let content1: String
    let content2: String
    
    static func == (lhs: Content, rhs: Content) -> Bool {
         return lhs.id == rhs.id
     }
}
