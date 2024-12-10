//
//  ContentViewModel.swift
//  Sawan-AnswersAi-iOS
//
//  Created by Sawan Kumar on 12/9/24.
//

import Foundation

class ContentViewModel: ObservableObject {
    @Published var contents: [Content] = []

    init() {
        loadContents()
    }

    func loadContents() {
        if let url = Bundle.main.url(forResource: "content", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decodedContents = try JSONDecoder().decode([Content].self, from: data)
                DispatchQueue.main.async {
                    self.contents = decodedContents
                }
            } catch {
                print("Error loading JSON: \(error)")
            }
        }
    }
}
