//
//  TabBarView.swift
//  Sawan-AnswersAi-iOS
//
//  Created by Sawan Kumar on 12/9/24.
//

import SwiftUI
import UIKit

struct TabBarView: View {
    var body: some View {
        TabView {
           
            TodayView()
                .tabItem {
                    Image(systemName: "doc.text.image")
                    Text("Today")
                }
            
            
            Text("Games View")
                .tabItem {
                    Image(systemName: "gamecontroller")
                    Text("Games")
                }
            
            
            Text("Apps View")
                .tabItem {
                    Image(systemName: "square.stack")
                    Text("Apps")
                }
            
            
            Text("Arcade View")
                .tabItem {
                    Image(systemName: "gamecontroller.fill")
                    Text("Arcade")
                }
            
            
            Text("Search View")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
        }
    }
}
