//
//  MainTabConfig.swift
//  Skripsi
//
//  Created by Mac-albert on 22/05/23.
//

import SwiftUI

struct MainTabConfig: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            MealTabItemView()
            .tabItem {
                Image(systemName: "fork.knife")
                Text("Meal")
            }
            .tag(0)
            
            Text("Tab 2")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
                .tag(1)
            ProfileTabView()
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Profile")
                }
                .tag(2)
        }
        .accentColor(Color(hex: "#91B898"))
    }
}

struct MainTabConfig_Previews: PreviewProvider {
    static var previews: some View {
        MainTabConfig()
    }
}
